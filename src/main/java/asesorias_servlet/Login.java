package asesorias_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String parametro = request.getParameter("parametro"); 
		
		if (parametro == null) {
			getServletContext().getRequestDispatcher("/views/login.jsp") .forward(request, response);
			}else{
			getServletContext().getRequestDispatcher("/views/login.jsp") .forward(request, response);
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String psw = request.getParameter("psw"); 
		
		if (uname != null) {
			if (uname.equals("admin") && psw.equals("1234")) { 
				HttpSession sesion = request.getSession();
				sesion.setAttribute("uname", uname);
				System.out.println("Usuario " + uname + " ha iniciado sesion");
				
				getServletContext().getRequestDispatcher("/CrearCapacitacion") .forward(request, response);
			} else if (!uname.equals("admin") || !psw.equals("1234")) { 
				getServletContext().getRequestDispatcher("/Login") .forward(request, response);
			}
		} else {
		getServletContext() .getRequestDispatcher("/Login") .forward(request, response);
		}
	}

}
