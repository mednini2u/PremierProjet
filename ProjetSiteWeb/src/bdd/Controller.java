package bdd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bdd.Terrain;
import bdd.Ter;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Terrain> terrains = new ArrayList<Terrain>();
		/*terrains.add(new Etudiant(1, "a", "a"));
		terrains.add(new Etudiant(2, "b", "b"));
		terrains.add(new Etudiant(3, "c", "c"));
		terrains.add(new Etudiant(4, "d", "d"));*/
		
		request.setAttribute("terrains", terrains);
		
		
		Ter ListeTerrain = new Ter();
		request.setAttribute("res", ListeTerrain.afficher());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/PresTerrain.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
