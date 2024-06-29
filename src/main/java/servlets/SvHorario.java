
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
import logica.Horario;


@WebServlet(name = "SvHorario", urlPatterns = {"/SvHorario"})
public class SvHorario extends HttpServlet {
    
    Controladora control = new Controladora();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Horario> listaHorarios = new ArrayList<Horario>();
        listaHorarios = control.traerHorarios();
        
        HttpSession misession = request.getSession();
        misession.setAttribute("listaHorarios", listaHorarios);
        
        response.sendRedirect("verHorarios.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String iniHora = request.getParameter("ini_hora");
        String finHora = request.getParameter("fin_hora");
        
        control.crearHorario(iniHora, finHora);
        
        response.sendRedirect("index.jsp");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
