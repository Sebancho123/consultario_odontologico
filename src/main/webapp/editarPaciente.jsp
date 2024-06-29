

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Editar Pacientes</h1>
<p>Este es el apartado para editar un Pacinete</p>

<%Paciente paci = (Paciente) request.getSession().getAttribute("editPaci"); %>

<form class="paci" action="SvEditPaci" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="dni"
                   placeholder="Dni" value="<%= paci.getDni() %>" name="dni">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombre"
                   placeholder="Nombre" value=" <%= paci.getNombre()%>" name="nombre">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="apellido"
                   placeholder="Apellido"  value=" <%= paci.getApellido()%>" name="apellido">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="telefono"
                   placeholder="Telefono"  value=" <%= paci.getTelefono() %>" name="telefono">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="direccion"
                   placeholder="Direccion"  value="<%= paci.getDirecion() %>" name="direccion">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="fechaNac"
                   placeholder="Fecha de Nacimiento" 
                   <%SimpleDateFormat formatear = new SimpleDateFormat("dd/MM/yyyy");%>
                   value="<%= formatear.format(paci.getFecha_nac()) %>"
                   name="fechaNac">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="o_s"
                   placeholder="Tiene Obra social" value=" <%= paci.isTiene_OS() %>" name="o_s">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="tipo_sangre"
                   placeholder="Tipo de Sangre" value=" <%= paci.getTipo_sangre()%>" name="tipo_sangre">
        </div>        
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Editar Paciente
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>