
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Horario;
import logica.Odontologo;
import logica.Paciente;
import logica.Secretario;
import logica.Turno;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {
    
    HorarioJpaController horarioJpa = new HorarioJpaController();
    OdontologoJpaController odontoJpa = new OdontologoJpaController();
    PacienteJpaController paciJpa = new PacienteJpaController();
    PersonaJpaController persoJpa = new PersonaJpaController();
    ResponsableJpaController respoJpa = new ResponsableJpaController();
    SecretarioJpaController secreJpa = new SecretarioJpaController();
    TurnoJpaController turnoJpa = new TurnoJpaController();
    UsuarioJpaController usuJpa = new UsuarioJpaController();
    
    
    public void crearUsuario(Usuario usu) {
        
        usuJpa.create(usu);
        
    }

    public List<Usuario> traerUsuarios() {
        
        return usuJpa.findUsuarioEntities();
        
    }

    public void borrarUsuario(int id) {
        try {
            usuJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuario(int id_usu) {
        return usuJpa.findUsuario(id_usu);
    }

    public void editarUsuario(Usuario usu) {
        try {
            usuJpa.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearOdontologo(Odontologo odonto) {
        odontoJpa.create(odonto);
    }

    public List<Turno> traerTurnos() {
        return turnoJpa.findTurnoEntities();
    }

    public Odontologo traerOdonto(int id_odonto) {
        return odontoJpa.findOdontologo(id_odonto);
    }

    public void editarOdontologo(Odontologo odonto) {
        try {
            odontoJpa.edit(odonto);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public List<Odontologo> traerOdontologos() {
//        return odontoJpa.findOdontologoEntities();
//    }

    public void borrarOdontologo(int id_odonto) {
        try {
            odontoJpa.destroy(id_odonto);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearPaciente(Paciente paci) {
        paciJpa.create(paci);
    }

    public List<Paciente> traerPacientes() {
        return paciJpa.findPacienteEntities();
    }

    public void borrarPaciente(int id_paci) {
        try {
            paciJpa.destroy(id_paci);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Paciente traerPaciente(int id_edit) {
        return paciJpa.findPaciente(id_edit);
    }

    public void editarPaciente(Paciente paci) {
     
        try {
            paciJpa.edit(paci);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public Odontologo traerOdontologo(int id_odo) {
        return odontoJpa.findOdontologo(id_odo);
    }

    public void crearSecretario(Secretario secre) {
        secreJpa.create(secre);
    }

    public List<Secretario> traerSecreatrios() {
        return secreJpa.findSecretarioEntities();
    }

    public void borrarSecretario(int id_secre) {
        try {
            secreJpa.destroy(id_secre);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Secretario traerSecreatrio(int id_editSc) {
        return secreJpa.findSecretario(id_editSc);
    }

    public void editarSecre(Secretario secre) {
        try {
            secreJpa.edit(secre);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void setearId(Secretario secre) {
        try {
            secreJpa.edit(secre);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearTurno(Turno turno) {
        turnoJpa.create(turno);
    }

    public void borrarTurno(int id_tur) {
        try {
            turnoJpa.destroy(id_tur);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Turno traerTurno(int id_turno) {
        return turnoJpa.findTurno(id_turno);
    }

    public void editarTurno(Turno tur) {
        try {
            turnoJpa.edit(tur);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearHorario(Horario horario) {
        horarioJpa.create(horario);
    }

    public List<Horario> traerHorarios() {
        return horarioJpa.findHorarioEntities();
    }

    public void borrarHorario(int id_horaElim) {
        try {
            horarioJpa.destroy(id_horaElim);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Horario traerHorario(int idHora_edit) {
        return horarioJpa.findHorario(idHora_edit);
    }

    public void editarHorario(Horario horario) {
        try {
            horarioJpa.edit(horario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarOdonto(Odontologo odo) {
        try {
            odontoJpa.edit(odo);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Odontologo> traerOdontologos() {
        return odontoJpa.findOdontologoEntities();
    }
    
}
