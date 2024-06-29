package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Turno;

@WebServlet(name = "SvTurno", urlPatterns = {"/SvTurno"})
public class SvTurno extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Turno> listaTurnos = new ArrayList<Turno>();
        listaTurnos = control.traerTurnos();

        HttpSession misession = request.getSession();
        misession.setAttribute("listaTurnosV", listaTurnos);

        response.sendRedirect("verTurnos.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String afeccion = request.getParameter("afeccion");
        SimpleDateFormat formato = new SimpleDateFormat("dd MM yyyy");
        String fecha_tur = request.getParameter("fecha_tur");

        Date fechaTurn = null;

        try {
            fechaTurn = formato.parse(fecha_tur);
        } catch (ParseException ex) {
            Logger.getLogger(SvTurno.class.getName()).log(Level.SEVERE, null, ex);
        }
        String horaTur = request.getParameter("hora_tur");
        String nombreOdo = request.getParameter("nombre_odo");
        String nombrePaci = request.getParameter("nombre_paci");

        control.crearTurno(afeccion, fechaTurn, horaTur, nombreOdo, nombrePaci);
        
        response.sendRedirect("index.jsp");
        
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
