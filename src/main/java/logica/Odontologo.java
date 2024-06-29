
package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Odontologo extends Persona implements Serializable{
    //private int id_odonto;
    private String especialidad;
    
    @OneToOne
    private Horario horario;
    @OneToOne
    private Usuario usu;
    @OneToMany(mappedBy = "odonto")
    private List<Turno> listaTurnos;

    public Odontologo() {
    }

    public Odontologo(String especialidad, Horario horario, Usuario usu, List<Turno> listaTurnos, int id, String dni, String nombre, String apellido, String telefono, String direcion, Date fecha_nac) {
        super(id, dni, nombre, apellido, telefono, direcion, fecha_nac);
        this.especialidad = especialidad;
        this.horario = horario;
        this.usu = usu;
        this.listaTurnos = listaTurnos;
    }

    public Horario getHorario() {
        return horario;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }

    public Usuario getUsu() {
        return usu;
    }

    public void setUsu(Usuario usu) {
        this.usu = usu;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }
    
    
}
