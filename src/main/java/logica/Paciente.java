
package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Paciente extends Persona implements Serializable{
    
    //private int id_paciente;
    private boolean tiene_OS;
    private String tipo_sangre;
    @OneToOne
    private Responsable respon;
    @OneToMany(mappedBy = "paciente")
    private List<Turno> listaTurnos;

    public Paciente() {
    }

    public Paciente(boolean tiene_OS, String tipo_sangre, Responsable respon, List<Turno> listaTurnos, int id, String dni, String nombre, String apellido, String telefono, String direcion, Date fecha_nac) {
        super(id, dni, nombre, apellido, telefono, direcion, fecha_nac);
        this.tiene_OS = tiene_OS;
        this.tipo_sangre = tipo_sangre;
        this.respon = respon;
        this.listaTurnos = listaTurnos;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }

    public Responsable getRespon() {
        return respon;
    }

    public void setRespon(Responsable respon) {
        this.respon = respon;
    }

    public boolean isTiene_OS() {
        return tiene_OS;
    }

    public void setTiene_OS(boolean tiene_OS) {
        this.tiene_OS = tiene_OS;
    }

    public String getTipo_sangre() {
        return tipo_sangre;
    }

    public void setTipo_sangre(String tipo_sangre) {
        this.tipo_sangre = tipo_sangre;
    }
    
}
