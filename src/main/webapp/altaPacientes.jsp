
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Alta Pacientes</h1>
<p>Este es el apartado para dar de alta un Pacinete</p>

<form class="paci" action="SvPaciente" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="dni"
                   placeholder="Dni" name="dni">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombre"
                   placeholder="Nombre" name="nombre">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="apellido"
                   placeholder="Apellido" name="apellido">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="telefono"
                   placeholder="Telefono" name="telefono">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="direccion"
                   placeholder="Direccion" name="direccion">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="fechaNac"
                   placeholder="Fecha de Nacimiento" name="fechaNac">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="o_s"
                   placeholder="Tiene Obra social" name="o_s">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="tipo_sangre"
                   placeholder="Tipo de Sangre" name="tipo_sangre">
        </div>        
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Paciente
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>