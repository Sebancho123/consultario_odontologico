
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Horario;


@WebServlet(name = "SvEditHora", urlPatterns = {"/SvEditHora"})
public class SvEditHora extends HttpServlet {
    
    Controladora control = new Controladora();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idHora_edit = Integer.parseInt(request.getParameter("id"));
        
        Horario horario = control.traerHorario(idHora_edit);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("horaEdit", horario);
        
        response.sendRedirect("editarHorario.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String horaIni = request.getParameter("ini_hora");
        String horaFin = request.getParameter("fin_hora");

        Horario horario = (Horario) request.getSession().getAttribute("horaEdit");
        
        horario.setHorario_inicio(horaIni);
        horario.setHorario_fin(horaFin);
        
        control.editarHorario(horario);
        
        response.sendRedirect("SvHorario");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
