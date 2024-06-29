
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
import logica.Secretario;


@WebServlet(name = "SvSecretario", urlPatterns = {"/SvSecretario"})
public class SvSecretario extends HttpServlet {
    
    
    Controladora control = new Controladora();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Secretario> listaSecretarios = new ArrayList<Secretario>();
        listaSecretarios = control.traerSecretarios();
        
        HttpSession misession = request.getSession();
        misession.setAttribute("listaSecretarios", listaSecretarios);
        
        response.sendRedirect("verSecretarios.jsp");
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        
        SimpleDateFormat formato = new SimpleDateFormat("dd MM yyyy");
        String fechaNaci = request.getParameter("fecha_nac");
        
        Date fechaNac = null;
        try {
            fechaNac = formato.parse(fechaNaci);
        } catch (ParseException ex) {
            Logger.getLogger(SvSecretario.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sector = request.getParameter("sector");
        
        control.crearSecretario(dni, nombre, apellido, telefono, direccion, fechaNac, sector);
        
        response.sendRedirect("index.jsp");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
