package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.polytech.CliService;
import fr.polytech.Cli;
import fr.polytech.Client;


/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Cli clients = new CliService().getCliPort();
	
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
		
		Cli ListeClient = new CliService().getCliPort();
		request.setAttribute("res", ListeClient.afficherClient());
		this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Client cli = new Client();
		String login = request.getParameter("pseudo");
		String password = clients.hashPasswordClient(request.getParameter("password"));
		
		cli.setPseudo(login);
		cli.setPassword(password);
		
		boolean test = clients.logClient(cli);
		
		System.out.println("TEST CON : " +test);
		if(test == false) {
			request.setAttribute("okPseudo", false);
			this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
		}
		else {
			request.setAttribute("okPseudo", true);
			HttpSession session = request.getSession();		
			session.setAttribute("login", login);
			session.setAttribute("password", password);
			this.getServletContext().getRequestDispatcher("/WEB-INF/Index.jsp").forward(request, response);
		}

	}
}
