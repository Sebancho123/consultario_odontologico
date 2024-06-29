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
import static logica.Controladora.calcularEdad;
import logica.Paciente;
import logica.Responsable;

@WebServlet(name = "SvEditPaci", urlPatterns = {"/SvEditPaci"})
public class SvEditPaci extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id_edit = Integer.parseInt(request.getParameter("id"));
        Paciente paci = control.traerPaciente(id_edit);

        HttpSession misession = request.getSession();
        misession.setAttribute("editPaci", paci);

        response.sendRedirect("editarPaciente.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Paciente paci = (Paciente) request.getSession().getAttribute("editPaci");
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");

        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");

        String fechaNac = request.getParameter("fechaNac");

        Date fecha_nac = null;

        try {
            fecha_nac = formato.parse(fechaNac);
        } catch (ParseException ex) {
            Logger.getLogger(SvEditPaci.class.getName()).log(Level.SEVERE, null, ex);
        }

        String tiene_os = request.getParameter("o_s");
        String tipoSangre = request.getParameter("tipo_sangre");
        
        paci.setDni(dni);
        paci.setNombre(nombre);
        paci.setApellido(apellido);
        paci.setTelefono(telefono);
        paci.setDirecion(direccion);
        paci.setFecha_nac(fecha_nac);
        
        if (tiene_os.equalsIgnoreCase("si")) {
        paci.setTiene_OS(true);
        }else {
            if (tiene_os.equalsIgnoreCase("no")) {
                paci.setTiene_OS(false);
            }
        }
        
        paci.setTipo_sangre(tipoSangre);
        
        if (calcularEdad(fecha_nac.getDate(), fecha_nac.getMonth() + 1, fecha_nac.getYear() + 1990) < 18) {
            Responsable respon = new Responsable();
            respon.setId(1);
            paci.setRespon(respon);
        }else {
        paci.setRespon(null);
        }
        
        

        control.editarPaci(paci);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
