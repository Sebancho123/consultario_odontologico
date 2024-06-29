
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
import logica.Odontologo;
import logica.Paciente;
import logica.Turno;


@WebServlet(name = "SvEditTur", urlPatterns = {"/SvEditTur"})
public class SvEditTur extends HttpServlet {
    
    Controladora control = new Controladora();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_turno = Integer.parseInt(request.getParameter("id"));
        Turno turno = control.traerTurno(id_turno);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("editTurno", turno);
        
        response.sendRedirect("editarTurno.jsp");
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String afeccion = request.getParameter("afeccion");
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        String fechaNac = request.getParameter("fechaTur");
        
        Date fecha_nac = null;
        try {
            fecha_nac = formato.parse(fechaNac);
        } catch (ParseException ex) {
            Logger.getLogger(SvEditTur.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String horaTur = request.getParameter("horaTur");
        String nombreOdo = request.getParameter("nombreOdo");
        String nombrePaci = request.getParameter("nomrbePaci");
        
        Turno tur = (Turno) request.getSession().getAttribute("editTurno");
        tur.setAfeccion(afeccion);
        tur.setFecha_turno(fecha_nac);
        tur.setHora_turno(horaTur);
        
        List<Odontologo> listaOdontologos = new ArrayList<Odontologo>();
        listaOdontologos = control.traerOdontologos();
        
        for (Odontologo odo : listaOdontologos) {
            if (odo.getNombre().equals(nombreOdo)) {
                tur.setOdonto(odo);
            }
        }
        
        List<Paciente> listaPacientes = new ArrayList<Paciente>();
        listaPacientes = control.traerPacientes();
        
        for (Paciente paci : listaPacientes) {
            if (paci.getNombre().equals(nombrePaci)) {
                tur.setPaciente(paci);
            }
        }
        
        control.editarTurno(tur);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
