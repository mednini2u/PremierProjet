package bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Ter {
	
	private Connection connection;

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	
	public void seConnecter() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //exception surveill�e
		} catch (ClassNotFoundException e) {
			System.out.println("Le Driver n'est pas charg�");
		}
		
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/sitewebterrains?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
			System.out.println("Connect� � la BDD");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Non connect� � la BDD");
		}
		
	}
	
	
	public List<Terrain> afficher(){
		List<Terrain> res = new ArrayList<Terrain>();

		this.seConnecter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //exception surveill�e
		} catch (ClassNotFoundException e) {
			System.out.println("Le Driver n'est pas charg�");
		}
		Statement statement = null;
		ResultSet resultSet = null;
		
		if(this.connection !=null) {
			try {
				
				statement = connection.createStatement();
				//execute une requete et r�cuperer le contenu dans l'objet r�sultSet
				resultSet = statement.executeQuery("SELECT * FROM `terrains`");
				
				//r�cup�ration des donn�es...
				while(resultSet.next()) {
					int id = resultSet.getInt("id");
					String nom = resultSet.getString("nom");
					double surface = resultSet.getDouble("surface");
					double prix = resultSet.getDouble("prix");
					res.add(new Terrain(id, nom, surface, prix));
				}
				
				
			} catch (SQLException e) {
				System.out.println(e);
				System.out.println("Probl�me de connexion � la base de donn�e");
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
	
		
	public void ajouter(Terrain terrain) {
		this.seConnecter();
		
		try {
			PreparedStatement prs = this.connection.prepareStatement("INSERT INTO `terrains`(`id`, `nom`, `prix`, `surface`) VALUES (?,?,?,?);");
			prs.setInt(1, 56);
			prs.setString(2, terrain.getNom());
			prs.setDouble(3, terrain.getPrix());
			prs.setDouble(4, terrain.getSurface());
			

			prs.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Probl�me dans l'ajout d'un terrain");
		}
	}

/*
	public void supprimer(int idSup) {
		this.seConnecter();
		
		// failles d'injection SQL
		try {
			PreparedStatement prs = this.connection.prepareStatement("DELETE FROM `terrains` WHERE `id`=?");
			prs.setInt(1, idSup);
	
			prs.executeUpdate();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Probl�me dans la suppresion d'un terrain");
		}
	}
	*/	
	
		
}
