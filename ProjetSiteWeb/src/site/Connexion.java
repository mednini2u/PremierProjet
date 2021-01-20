package site;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import compte.Cli;
import compte.Client;



/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Cli clients = new Cli();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
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
		this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Client cli = new Client();
		String login = request.getParameter("pseudo");
		String password = clients.hash(request.getParameter("password"));
		
		System.out.println("Pass:" + clients.hash(password));
		cli.setPseudo(login);
		cli.setPassword(password);
		
		boolean test = clients.exist(cli);
		
		System.out.println("TEST CON : " +test);
		if(test == false) {
			request.setAttribute("okPseudo", false);
		}
		else {
			request.setAttribute("okPseudo", true);
			HttpSession session = request.getSession();		
			session.setAttribute("login", login);
			session.setAttribute("password", password);
			//this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
		}
			
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
		
	}

}
