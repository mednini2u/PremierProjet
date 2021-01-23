package Model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.KeySpec;
import javax.jws.WebMethod;
import javax.jws.WebService;
import java.util.Random;
import java.util.Base64;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

@WebService(targetNamespace="http://www.polytech.fr")
public class Cli {
	
	private Connection connection;
	
	@WebMethod(exclude = true)
	public Connection getConnection() {
		return connection;
	}

	@WebMethod(exclude = true)
	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	
	@WebMethod(operationName="seConnecterClient")
	public void seConnecter() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //exception surveillée
		} catch (ClassNotFoundException e) {
			System.out.println("Le Driver n'est pas chargé");
		}
		
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/terrainfacile?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
			System.out.println("Connecté à la BDD");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Non connecté à la BDD");
		}
	}
	
	@WebMethod(operationName="afficherClient")
	public List<Client> afficherClient(){
		List<Client> res = new ArrayList<Client>();

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
				resultSet = statement.executeQuery("SELECT * FROM `clients`");
				
				//récupération des données...
				while(resultSet.next()) {
					int id = resultSet.getInt("id");
					String pseudo = resultSet.getString("pseudo");
					String mail = resultSet.getString("mail");
					String password = resultSet.getString("password");
					res.add(new Client(id, pseudo, mail, password));
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
	
	@WebMethod(operationName="ajouterClient")
	public void ajouterClient(Client client) {
		this.seConnecter();
		
		try {
			
			PreparedStatement pst1 = this.connection.prepareStatement("select max(`id`)+1 from `clients`");
            ResultSet rs = pst1.executeQuery();
            int user_id = 0;
            while(rs.next())
            {
                user_id = rs.getInt(1);
            }
            
            
			
            PreparedStatement ps = this.connection.prepareStatement("SELECT `pseudo` from `clients` WHERE pseudo = '" + client.getPseudo() + "'");
            ResultSet resultSet = ps.executeQuery();
            if(resultSet.next()) {
                //final int count = resultSet.getInt(1);
                System.out.println("-Le pseudo utilis� existe d�j�");
            }
            
            else {
            	PreparedStatement prs = this.connection.prepareStatement("INSERT INTO `clients`(`id`, `pseudo`, `mail`, `password`) VALUES (?,?,?,?);");
    			prs.setInt(1, user_id);
    			prs.setString(2, client.getPseudo());
    			prs.setString(3, client.getMail());
    			prs.setString(4, client.getPassword());

    			prs.executeUpdate();
            }
          
			
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Probleme dans l'ajout d'un client");
		}
	}

	@WebMethod(operationName="existClient")
	public boolean existClient(Client client) {
		this.seConnecter();
		boolean okPseudo = false;
		try {
			
			
			PreparedStatement ps = this.connection.prepareStatement("SELECT * FROM clients WHERE pseudo='"+client.getPseudo()+"'");
			ResultSet rs = ps.executeQuery();
			
            if(rs.next()) {
                System.out.println("Le pseudo utilise existe deja");
                okPseudo = true;
                return okPseudo;
            }
			else {
				System.out.println("Pseudo non utilise : ok");
				 okPseudo = false;
	             return okPseudo;    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Probl�me dans la recherche d'un client");
			 okPseudo = false;
             return okPseudo;
		}
	}
	
	@WebMethod(operationName="logClient")
	public boolean logClient(Client client) {
		this.seConnecter();
		boolean okPseudo = false;
		try {
			
			
			PreparedStatement ps = this.connection.prepareStatement("SELECT * FROM clients WHERE pseudo='"+client.getPseudo()+"' AND password='"+client.getPassword()+"'");
			ResultSet rs = ps.executeQuery();
			
            if(rs.next()) {
                System.out.println("Le pseudo utilise existe deja");
                okPseudo = true;
                return okPseudo;
            }
			else {
				System.out.println("Pseudo non utilise : ok");
				 okPseudo = false;
	             return okPseudo;    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Probl�me dans la recherche d'un client");
			 okPseudo = false;
             return okPseudo;
		}
	}
	
	@WebMethod(operationName="hashPasswordClient")
	public String hashPasswordClient(String password) {
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			digest.update(password.getBytes());
			byte[] result = digest.digest();
			StringBuilder sb = new StringBuilder();

			for(byte b : result) {
				sb.append(String.format("%02x",b));

			}
			return sb.toString();
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
}
