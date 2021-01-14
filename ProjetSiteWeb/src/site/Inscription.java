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
		//ter.setId(Integer.parseInt(request.getParameter("ida")));
		
		String pseudo = request.getParameter("pseudo");
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");
		
		if(pseudo == null || pseudo.isEmpty() || mail == null || mail.isEmpty() || password == null || password.isEmpty()) {
			System.out.println("Formulaire incomplet");
		}
		else {
			cli.setPseudo(pseudo);
			cli.setMail(mail);
			cli.setPassword(password);
			Cli clients = new Cli();
			clients.ajouter(cli);
		}
		
		doGet(request, response);
	}

}
