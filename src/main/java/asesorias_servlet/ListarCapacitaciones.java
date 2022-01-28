package asesorias_servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import asesorias_model.Cosas;

/**
 * Servlet implementation class ListarCapacitaciones
 */
@WebServlet("/ListarCapacitaciones")
public class ListarCapacitaciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarCapacitaciones() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList <Cosas> cosas = new ArrayList<Cosas>();
		
		cosas.add(new Cosas(1, "Macetero", "Muy bacan, vintage, ondero, ceramica", 220127));
		cosas.add(new Cosas(2, "Telefono", "Snoopy, Vintage", 220125));
		cosas.add(new Cosas(3, "Reloj", "Alarma Vintage, Madera, era de mi abuelita", 220125));
		cosas.add(new Cosas(4, "Luz Neon Corazon", "Roja", 220127));
		
		request.setAttribute("cosas", cosas);
		
		HttpSession sesion = request.getSession(false);
		
		if (sesion != null && sesion.getAttribute("uname") != null) {
			getServletContext().getRequestDispatcher("/views/listar.jsp").forward(request, response);
		}else {
			System.out.println("No ha iniciado sesion");
			getServletContext().getRequestDispatcher("/Login").forward(request, response);
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
