package bdd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Controller
 */
@WebServlet("/PresTerrain")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Ter terrains = new Ter();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("terrains", terrains);
		
		
		Ter ListeTerrain = new Ter();
		request.setAttribute("res", ListeTerrain.afficher());
		
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
		
		Ter terrains = new Ter();
		terrains.ajouter(ter);
		doGet(request, response);
		
	}

}
