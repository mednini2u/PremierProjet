package compte;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bdd.Terrain;

public class Cli {
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
	
	
	public List<Client> afficher(){
		List<Client> res = new ArrayList<Client>();

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
				resultSet = statement.executeQuery("SELECT * FROM `clients`");
				
				//r�cup�ration des donn�es...
				while(resultSet.next()) {
					int id = resultSet.getInt("id");
					String pseudo = resultSet.getString("nom");
					String mail = resultSet.getString("mail");
					String password = resultSet.getString("password");
					res.add(new Client(id, pseudo, mail, password));
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
	
		
	public void ajouter(Client client) {
		this.seConnecter();
		
		try {
			PreparedStatement pst1 = this.connection.prepareStatement("select max(`id`)+1 from `clients`");
            ResultSet rs = pst1.executeQuery();
            int user_id = 0;
            while(rs.next())
            {
                user_id = rs.getInt(1);
            }
            
            
			PreparedStatement prs = this.connection.prepareStatement("INSERT INTO `terrains`(`id`, `nom`, `prix`, `surface`) VALUES (?,?,?,?);");
			prs.setInt(1, user_id);
			prs.setString(2, client.getPseudo());
			prs.setString(3, client.getMail());
			prs.setString(3, client.getPassword());

			prs.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Probl�me dans l'ajout d'un terrain");
		}
	}


	

}
