package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.polytech.Cli;
import fr.polytech.CliService;
import fr.polytech.Client;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/Inscription")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Cli clients = new CliService().getCliPort();
       
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
		
		
		Cli ListeClient = new CliService().getCliPort();
		request.setAttribute("res", ListeClient.afficherClient());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Client cli = new Client();
		//ter.setId(Integer.parseInt(request.getParameter("ida")));
		
		String login = new String(request.getParameter("pseudo").getBytes("ISO-8859-1"), "UTF-8");
		String mail = request.getParameter("mail");
		String password1 = clients.hashPasswordClient(request.getParameter("password1"));
		String password2 = clients.hashPasswordClient(request.getParameter("password2"));
		
		cli.setPseudo(login);
		cli.setMail(mail);
		cli.setPassword(password1);
		
		boolean test = clients.existClient(cli);
		
		System.out.println("TEST inscription : " +test);
		if(login == null || login.isEmpty() || mail == null || mail.isEmpty() || password1 == null || password1.isEmpty() || password2 == null || password2.isEmpty()) {
			System.out.println("Formulaire incomplet");
			request.setAttribute("Form", false);
		}
		else {
			request.setAttribute("Form", true);
			if(test == false && (password1.equals(password2))) {
				request.setAttribute("okPseudo", true);
				request.setAttribute("Mdpdif", true);
				cli.setPseudo(login);
				cli.setMail(mail);
				cli.setPassword(password1);
				clients.ajouterClient(cli);
			}
			else if(test == true) {
				System.out.println("Pseudo deja existant");
				request.setAttribute("okPseudo", true);
				request.setAttribute("Mdpdif", false);
			}
			else {
				
				System.out.println("Mots de passe differents");
				request.setAttribute("okPseudo", false);
				request.setAttribute("Mdpdif", true);
			}	
		}
		doGet(request, response);
	}
}
