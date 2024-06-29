


<%@page import="logica.Odontologo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Editar Odontologos</h1>
<p>Este es el apartado para editar un Odontologos</p>

<%Odontologo odo = (Odontologo) request.getSession().getAttribute("editOdo"); %>

<form class="paci" action="SvEditOdonto" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="dni"
                   placeholder="Dni" value="<%= odo.getDni() %>" name="dni">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombre"
                   placeholder="Nombre" value=" <%= odo.getNombre()%>" name="nombre">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="apellido"
                   placeholder="Apellido"  value=" <%= odo.getApellido()%>" name="apellido">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="telefono"
                   placeholder="Telefono"  value=" <%= odo.getTelefono() %>" name="telefono">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="direccion"
                   placeholder="Direccion"  value="<%= odo.getDirecion() %>" name="direccion">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="fechaNac"
                   placeholder="Fecha de Nacimiento" 
                   <%SimpleDateFormat formatear = new SimpleDateFormat("dd/MM/yyyy");%>
                   value="<%= formatear.format(odo.getFecha_nac()) %>"
                   name="fechaNac">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="o_s"
                   placeholder="Especialidad" value=" <%= odo.getEspecialidad()%>" name="especialidad">
        </div>   
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="o_s"
                   placeholder="Numero de horario" value=" <%= odo.getHorario().getId_horario() %>" name="num_hora">
        </div> 
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Editar Odontologo
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>