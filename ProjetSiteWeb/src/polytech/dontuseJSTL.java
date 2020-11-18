package polytech;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import polytech.Auth;



/**
 * Servlet implementation class JSTLd�mo
 */
@WebServlet("/JSTL")
public class JSTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JSTL() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		/*
		if(password.equals("admin")) {
			session.setAttribute("login", login);
			
			response.sendRedirect("./Profil");
		}
		else {
			response.sendRedirect("./index.jsp");
		}*/
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/jspJSTL.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Auth auth = new Auth();
		auth.acces(request);
		request.setAttribute("auth", auth);
		
		String login = request.getParameter("login");
		request.setAttribute("login", login);
		
		String password = request.getParameter("password");
		request.setAttribute("password", password);
		
		
		HttpSession session = request.getSession();
;		
		session.setAttribute("login", login);
		session.setAttribute("password", password);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/jspJSTL.jsp").forward(request, response);
    
	}

}
