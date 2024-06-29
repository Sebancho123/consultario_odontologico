package servlets;

import java.io.IOException;
import java.text.ParseException;


import java.util.Date;
import java.text.SimpleDateFormat;
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

@WebServlet(name = "SvOdontologo", urlPatterns = {"/SvOdontologo"})
public class SvOdontologo extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Odontologo> listaOdontologos = new ArrayList<>();
        
        listaOdontologos = control.traerOdontologos();
        
        HttpSession misession = request.getSession();
        misession.setAttribute("listaOdontologos", listaOdontologos);
        
        response.sendRedirect("verOdontologo.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direc = request.getParameter("direc");

        SimpleDateFormat formato = new SimpleDateFormat("dd MM yyyy");

        String fechax = request.getParameter("fechanac");

        Date data = null;
        try {
            data = formato.parse(fechax);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        /*Date fecha;
            java.util.Date xfecha = formato.parse(fechaNac);
            
            fecha = new java.sql.Date(xfecha.getTime());*/
        String especialidad = request.getParameter("especialidad");
        
        String num_hora = request.getParameter("num_hora");

        control.crearOdontologo(dni, nombre, apellido, telefono, direc, data, especialidad, num_hora);

        response.sendRedirect("index.jsp");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
