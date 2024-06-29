
package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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


@WebServlet(name = "SvEditSecre", urlPatterns = {"/SvEditSecre"})
public class SvEditSecre extends HttpServlet {
    
    Controladora control = new Controladora();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_editSc = Integer.parseInt(request.getParameter("id"));
        Secretario secre = control.traerSecretario(id_editSc);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("editSecre", secre);
        
        response.sendRedirect("editarSecretario.jsp");
        
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        String fecha_nac = request.getParameter("fecha_nac");
        
        Date fechaNaci = null;
        try {
            fechaNaci = formato.parse(fecha_nac);
        } catch (ParseException ex) {
            Logger.getLogger(SvEditSecre.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sector = request.getParameter("sector");
        
        Secretario secre = (Secretario) request.getSession().getAttribute("editSecre");
        secre.setDni(dni);
        secre.setNombre(nombre);
        secre.setApellido(apellido);
        secre.setTelefono(telefono);
        secre.setDirecion(direccion);
        secre.setFecha_nac(fechaNaci);
        secre.setSector(sector);
        
        
        
        control.editarSecre(secre);
        
        response.sendRedirect("SvSecretario");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
