
package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;
import logica.Turno;


@WebServlet(name = "SvVerTurnosOdonto", urlPatterns = {"/SvVerTurnosOdonto"})
public class SvVerTurnosOdonto extends HttpServlet {
    
    Controladora control =new Controladora();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Turno> listaTurnos = new ArrayList<Turno>();
         listaTurnos = control.traerTurnosOdo();
         
         HttpSession misession = request.getSession();
         misession.setAttribute("listaTurnos", listaTurnos);
         
         
         int id_odo = Integer.parseInt(request.getParameter("id"));
         Odontologo odo = control.traerOdontologo(id_odo);
         
         HttpSession misessionOdo = request.getSession();
         misessionOdo.setAttribute("Odonto", odo);
         
         response.sendRedirect("verTurOdonto.jsp");
         
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
