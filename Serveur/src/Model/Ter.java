package Model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService(targetNamespace="http://www.polytech.fr")
public class Ter {
	
	private Connection connection;

	@WebMethod(exclude = true)
	public Connection getConnection() {
		return connection;
	}

	@WebMethod(exclude = true)
	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	
	@WebMethod(operationName="seConnecterTerrain")
	public void seConnecter() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //exception surveillée
		} catch (ClassNotFoundException e) {
			System.out.println("Le Driver n'est pas chargé");
		}
		
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/test?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "admin", "");
			System.out.println("Connecté à la BDD");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Non connecté à la BDD");
		}
	}

	@WebMethod(operationName="afficherTerrain")
	public List<Terrain> afficherTerrain(){
		List<Terrain> res = new ArrayList<Terrain>();

		this.seConnecter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //exception surveillée
		} catch (ClassNotFoundException e) {
			System.out.println("Le Driver n'est pas chargé");
		}
		Statement statement = null;
		ResultSet resultSet = null;
		
		if(this.connection !=null) {
			try {
				
				statement = connection.createStatement();
				//execute une requete et récuperer le contenu dans l'objet résultSet
				resultSet = statement.executeQuery("SELECT * FROM `terrains`");
				
				//récupération des données...
				while(resultSet.next()) {
					int id = resultSet.getInt("id");
					String nom = resultSet.getString("nom");
					double surface = resultSet.getDouble("surface");
					double prix = resultSet.getDouble("prix");
					res.add(new Terrain(id, nom, surface, prix));
				}
				
				
			} catch (SQLException e) {
				System.out.println(e);
				System.out.println("Problème de connexion à la base de donnée");
			}
			finally {
				
					try {
						if (connection!= null)
						connection.close();
						if (statement != null)
						statement.close();
						if(resultSet !=null)
						resultSet.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
		}
		
		
		return res;
	}
	
	@WebMethod(operationName="ajouterTerrain")
	public void ajouterTerrain(Terrain terrain) {
		this.seConnecter();
		
		try {
			PreparedStatement pst1 = this.connection.prepareStatement("select max(`id`)+1 from `terrains`");
            ResultSet rs = pst1.executeQuery();
            int user_id = 0;
            while(rs.next())
            {
                user_id = rs.getInt(1);
            }
            
            
			PreparedStatement prs = this.connection.prepareStatement("INSERT INTO `terrains`(`id`, `nom`, `prix`, `surface`) VALUES (?,?,?,?);");
			prs.setInt(1, user_id);
			prs.setString(2, terrain.getNom());
			prs.setDouble(3, terrain.getPrix());
			prs.setDouble(4, terrain.getSurface());
			

			prs.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Problème dans l'ajout d'un terrain");
		}
	}

	@WebMethod(operationName="supprimerTerrain")
	public void supprimerTerrain(int idSup) {
		this.seConnecter();
		
		// failles d'injection SQL
		try {
			PreparedStatement prs = this.connection.prepareStatement("DELETE FROM `terrains` WHERE `id`=?");
			prs.setInt(1, idSup);
	
			prs.executeUpdate();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Problème dans la suppresion d'un terrain");
		}
	}
		
}
