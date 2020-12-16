package polytech;



import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

public class Auth implements Serializable {
	
	
	private boolean connexion;

	
	public boolean acces(HttpServletRequest request) {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		if(password.equals("admin")) {
			this.connexion=true;
			
		}
		else {
			this.connexion=false;
			
		}
		return connexion;
	}
	
	public Auth() {
		super();
	}
	
	public boolean isConnexion() {
		return connexion;
	}

	

	public void setConnexion(boolean connexion) {
		this.connexion = connexion;
	}

	@Override
	public String toString() {
		return "Auth [connexion=" + connexion + "]";
	}
	
	
	
	
	
	
}
