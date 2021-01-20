package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.polytech.Ter;
import fr.polytech.TerService;
import fr.polytech.Terrain;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/PresTerrain")
public class Terrains extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Ter terrains = new TerService().getTerPort();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Terrains() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("terrains", terrains);
				
		Ter ListeTerrain = new TerService().getTerPort();
		request.setAttribute("res", ListeTerrain.afficherTerrain());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/PresTerrain.jsp").forward(request,response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Terrain ter = new Terrain();
		ter.setId(Integer.parseInt(request.getParameter("ida")));
		ter.setNom(request.getParameter("noma"));
		ter.setPrix(Double.parseDouble(request.getParameter("prixa")));
		ter.setSurface(Double.parseDouble(request.getParameter("surfacea")));
		
		Ter terrains = new TerService().getTerPort();
		terrains.ajouterTerrain(ter);
		doGet(request, response);
		
	}

}