package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.polytech.Ter;
import fr.polytech.TerService;
import fr.polytech.Terrain;

/**
 * Servlet implementation class Annonce
 */
@WebServlet("/Annonce")
public class Annonce extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Ter terrains = new TerService().getTerPort();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Annonce() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("terrains", terrains);
		
		
		Ter ListeTerrain = new TerService().getTerPort();
		//request.setAttribute("res", ListeTerrain.afficherTerrain());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Annonce.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Terrain ter = new Terrain();
		//ter.setId(Integer.parseInt(request.getParameter("ida")));
		
		String nom = request.getParameter("noma");
		String prix = request.getParameter("prixa");
		String surface = request.getParameter("surfacea");
		
		if(nom == null || nom.isEmpty() || prix == null || prix.isEmpty() || surface == null || surface.isEmpty()) {
			System.out.println("Formulaire incomplet");
		}
		else {
			ter.setNom(nom);
			ter.setPrix(Double.parseDouble(request.getParameter("prixa")));
			ter.setSurface(Double.parseDouble(request.getParameter("surfacea")));
			terrains.ajouterTerrain(ter);
		}
		doGet(request, response);
		
	}

}
