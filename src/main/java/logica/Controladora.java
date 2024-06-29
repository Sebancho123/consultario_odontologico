package logica;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import persistencia.ControladoraPersistencia;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearUsuario(String nombreUsu, String contrasenia, String rol) {
        Usuario usu = new Usuario();
        usu.setNombre_usuario(nombreUsu);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);
        controlPersis.crearUsuario(usu);

        List<Odontologo> listaOdonto = controlPersis.traerOdontologos();

        for (Odontologo odonto : listaOdonto) {
            if (usu.getNombre_usuario().equals(odonto.getNombre())) {

                int id_usu = usu.getId_usuario();

                Usuario usua = controlPersis.traerUsuario(id_usu);

                odonto.setUsu(usua);

                controlPersis.editarOdontologo(odonto);
            }
        }
        
        List<Secretario> listaSecre = controlPersis.traerSecreatrios();

        for (Secretario secre : listaSecre) {
            if (usu.getNombre_usuario().equals(secre.getNombre())) {

                int id_usu = usu.getId_usuario();

                Usuario usua = controlPersis.traerUsuario(id_usu);

                secre.setUn_usuario(usua);

                controlPersis.setearId(secre);
            }
        }

    }

    public List<Usuario> traerUsuarios() {
        return controlPersis.traerUsuarios();
    }

    public void borrarUsuario(int id) {
        controlPersis.borrarUsuario(id);
    }

    public Usuario traerUsuario(int id_usu) {
        return controlPersis.traerUsuario(id_usu);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);
    }

    public void crearOdontologo(String dni, String nombre, String apellido, String telefono, String direc, Date data, String especialidad, String num_hora) {
        Odontologo odonto = new Odontologo();
        odonto.setDni(dni);
        odonto.setNombre(nombre);
        odonto.setApellido(apellido);
        odonto.setTelefono(telefono);
        odonto.setDirecion(direc);
        odonto.setFecha_nac(data);
        odonto.setEspecialidad(especialidad);
        
        
        List<Horario> listaHorarios = controlPersis.traerHorarios();
        
        for (Horario hora : listaHorarios) {
            if (hora.getId_horario() == Integer.parseInt(num_hora)) {
                odonto.setHorario(hora);
            }
        }
        
        List<Usuario> listaUsuarios = controlPersis.traerUsuarios();
        
        for (Usuario usu : listaUsuarios) {
            if (usu.getNombre_usuario().equals(nombre)) {
                if (usu.getRol().equalsIgnoreCase("odontologo")) {
                    usu.getId_usuario();
                    odonto.setUsu(usu);
                    
                }
            }
        }
        controlPersis.crearOdontologo(odonto);
    }

    public List<Odontologo> traerOdontologos() {

        return controlPersis.traerOdontologos();

    }

    public void borrarOdontologo(int id_odonto) {
        controlPersis.borrarOdontologo(id_odonto);
    }

    public void crearPaciente(String dni, String nombre, String apellido, String telefono, String direc, Date fechaNac, String o_s, String tipoSangre) {
        Paciente paci = new Paciente();
        paci.setDni(dni);
        paci.setNombre(nombre);
        paci.setApellido(apellido);
        paci.setTelefono(telefono);
        paci.setDirecion(direc);
        paci.setFecha_nac(fechaNac);
        if (o_s.equalsIgnoreCase("si")) {
            paci.setTiene_OS(true);
        } else {
            if (o_s.equalsIgnoreCase("no")) {
                paci.setTiene_OS(false);
            }
        }

        paci.setTipo_sangre(tipoSangre);

        //calcularEdad(fechaNac.getDate(), fechaNac.getMonth() + 1, fechaNac.getYear() + 1990);
        if (calcularEdad(fechaNac.getDate(), fechaNac.getMonth() + 1, fechaNac.getYear() + 1990) < 18) {

            Responsable respon = new Responsable();
            respon.setId(1);

            paci.setRespon(respon);

        }

        controlPersis.crearPaciente(paci);

    }

    public static int calcularEdad(int dia, int mes, int anio) {

        Date fechaActual = new Date();

        int diaActual, mesActual, anioActual;

        diaActual = fechaActual.getDate();
        mesActual = fechaActual.getMonth() + 1;
        anioActual = fechaActual.getYear() + 1990;

        int diferenciaDeAnio = anioActual - anio;

        if (mesActual <= mes) {
            if (mesActual == mes) {
                if (dia > diaActual) {
                    diferenciaDeAnio++;
                }
            }
        }

        return diferenciaDeAnio;

    }

    public List<Paciente> traerPacientes() {
        return controlPersis.traerPacientes();
    }

    public void borrarPaciente(int id_paci) {
        controlPersis.borrarPaciente(id_paci);
    }

    public Paciente traerPaciente(int id_edit) {
        return controlPersis.traerPaciente(id_edit);
    }

    public void editarPaci(Paciente paci) {
        controlPersis.editarPaciente(paci);
    }

    public Odontologo traerOdontologo(int id_odo) {
        return controlPersis.traerOdontologo(id_odo);
    }

    public boolean comprovarIngreso(String usuario, String contra) {

        boolean ingreso = false;

        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.traerUsuarios();

        for (Usuario usu : listaUsuarios) {
            if (usu.getNombre_usuario().equals(usuario)) {
                if (usu.getContrasenia().equals(contra)) {
                    ingreso = true;
                    
                }else {
                    ingreso = false;
                }
            }

        }
        
       return ingreso;

    }

    public void crearSecretario(String dni, String nombre, String apellido, String telefono, String direccion, Date fechaNac, String sector) {
        
        Secretario secre = new Secretario ();
        secre.setDni(dni);
        secre.setNombre(nombre);
        secre.setApellido(apellido);
        secre.setTelefono(telefono);
        secre.setDirecion(direccion);
        secre.setFecha_nac(fechaNac);
        secre.setSector(sector);
        
        
        
        List<Usuario> listaUsuarios = controlPersis.traerUsuarios(); 
        

        for (Usuario usu : listaUsuarios){
            if (usu.getNombre_usuario().equals(nombre)) {
                if (usu.getRol().equalsIgnoreCase("secretario")) {
                    usu.getId_usuario();
                    secre.setUn_usuario(usu);
                }
            }
        }
        controlPersis.crearSecretario(secre);
        
        
        
    }

    public List<Secretario> traerSecretarios() {
        return controlPersis.traerSecreatrios();
    }

    public void borrarSecretario(int id_secre) {
        controlPersis.borrarSecretario(id_secre);
    }

    public Secretario traerSecretario(int id_editSc) {
        return controlPersis.traerSecreatrio(id_editSc);
    }

    public void editarSecre(Secretario secre) {
        controlPersis.editarSecre(secre);
    }

    public List<Turno> traerTurnosOdo() {
        return controlPersis.traerTurnos();
    }

    public void crearTurno(String afeccion, Date fechaTurn, String horaTur, String nombreOdo, String nombrePaci) {
        Turno turno = new Turno();
        
        turno.setAfeccion(afeccion);
        turno.setFecha_turno(fechaTurn);
        turno.setHora_turno(horaTur);
        
        List<Odontologo> listaOdontologos = new ArrayList<Odontologo>();
        listaOdontologos = controlPersis.traerOdontologos();
        
        for (Odontologo odo : listaOdontologos) {
            if (odo.getNombre().equals(nombreOdo)){
                turno.setOdonto(odo);
            }
        }
        
        List<Paciente> listaPacientes = new ArrayList<Paciente>();
        listaPacientes = controlPersis.traerPacientes();
        
        for (Paciente paci : listaPacientes) {
            if (paci.getNombre().equals(nombrePaci)){
                turno.setPaciente(paci);
            }
        }
        
        controlPersis.crearTurno(turno);
        
    }

    public List<Turno> traerTurnos() {
        return controlPersis.traerTurnos();
    }

    public void borrarTurno(int id_tur) {
        controlPersis.borrarTurno(id_tur);
    }

    public Turno traerTurno(int id_turno) {
        return controlPersis.traerTurno(id_turno);
    }

    public void editarTurno(Turno tur) {
        controlPersis.editarTurno(tur);
    }

    public void crearHorario(String iniHora, String finHora) {
        
        Horario horario = new Horario();
        horario.setHorario_inicio(iniHora);
        horario.setHorario_fin(finHora);
        
        controlPersis.crearHorario(horario);
        
        
    }

    public List<Horario> traerHorarios() {
        return controlPersis.traerHorarios();
    }

    public void borrarHorario(int id_horaElim) {
        controlPersis.borrarHorario(id_horaElim);
    }

    public Horario traerHorario(int idHora_edit) {
        return controlPersis.traerHorario(idHora_edit);
    }

    public void editarHorario(Horario horario) {
        controlPersis.editarHorario(horario);
    }

    public void editarOdontologo(Odontologo odo) {
        controlPersis.editarOdonto(odo);
    }

}
