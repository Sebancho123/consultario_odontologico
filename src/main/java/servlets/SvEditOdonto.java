
package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import logica.Horario;
import logica.Odontologo;

@WebServlet(name = "SvEditOdonto", urlPatterns = {"/SvEditOdonto"})
public class SvEditOdonto extends HttpServlet {
    
    Controladora control = new Controladora();

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_odo = Integer.parseInt(request.getParameter("id"));
        Odontologo odo = control.traerOdontologo(id_odo);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("editOdo", odo);
        
        response.sendRedirect("editarOdontologo.jsp");
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
        
        String fechaNac = request.getParameter("fechaNac");
        
        Date fechaNaci = null;
        try {
            fechaNaci = formato.parse(fechaNac);
        } catch (ParseException ex) {
            Logger.getLogger(SvEditOdonto.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String especialidad = request.getParameter("especialidad");
        String numHora = request.getParameter("num_hora");
        
        Odontologo odo = (Odontologo) request.getSession().getAttribute("editOdo");
        
        odo.setDni(dni);
        odo.setNombre(nombre);
        odo.setApellido(apellido);
        odo.setTelefono(telefono);
        odo.setDirecion(direccion);
        odo.setFecha_nac(fechaNaci);
        odo.setEspecialidad(especialidad);
        
        List<Horario> listaHorarios = control.traerHorarios();
        
        for (Horario hora : listaHorarios) {
            if (hora.getId_horario() == Integer.parseInt(numHora)) {
                odo.setHorario(hora);
            }
        }
        
        control.editarOdontologo(odo);
        
        response.sendRedirect("SvOdontologo");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
