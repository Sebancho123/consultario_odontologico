
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;


@WebServlet(name = "SvElimOdonto", urlPatterns = {"/SvElimOdonto"})
public class SvElimOdonto extends HttpServlet {
    
    Controladora control = new Controladora();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_odonto = Integer.parseInt(request.getParameter("id"));
        
        control.borrarOdontologo(id_odonto);
        
        response.sendRedirect("SvOdontologo");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
