package site;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bdd.Ter;
import bdd.Terrain;
import compte.Cli;
import compte.Client;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/Inscription")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Cli clients = new Cli();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inscription() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("clients", clients);
		
		
		Cli ListeClient = new Cli();
		request.setAttribute("res", ListeClient.afficher());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Client cli = new Client();
		
		
		String pseudo = request.getParameter("pseudo");
		String mail = request.getParameter("mail");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		
		if(pseudo == null || pseudo.isEmpty() || mail == null || mail.isEmpty() || password1 == null || password1.isEmpty() || password2 == null || password2.isEmpty()) {
			System.out.println("Formulaire incomplet");
		}
		else {
			if(clients.exist(cli) == false && (password1.equals(password2))) {
				cli.setPseudo(pseudo);
				cli.setMail(mail);
				cli.setPassword(password1);
				Cli clients = new Cli();
				clients.ajouter(cli);
			}
			else  {
				System.out.println("Mots de passe différents");
			}
			
		}
		
		doGet(request, response);
	}

}
