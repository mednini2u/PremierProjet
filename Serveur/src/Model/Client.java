package Model;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Client implements Serializable {
	private int id;
	private String pseudo;
	private String mail;
	private String password;

	public Client(int id, String pseudo, String mail, String password) {
		super();
		this.id = id;
		this.pseudo = pseudo;
		this.mail = mail;
		this.password = password;
	}
	
	public Client() {
		super();
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
