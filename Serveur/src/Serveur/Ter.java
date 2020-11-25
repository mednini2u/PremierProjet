package Serveur;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;


@WebService(targetNamespace="http://www.polytech.fr")
public class Ter {
	
	@WebMethod(operationName="afficher")
	public List<Terrain> afficher(){
		List<Terrain> res = new ArrayList<Terrain>();
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //exception surveill�e
		} catch (ClassNotFoundException e) {
			System.out.println("Le Driver n'est pas charg�");
		}
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/sitewebterrains?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
			System.out.println("Connect�");
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
		
		return res;
	}
}
