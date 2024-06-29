


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Alta Secretario</h1>
<p>Este es el apartado para dar alta a un secretario</p>

<form class="user" action="SvSecretario" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombreusu"
                   placeholder="Dni" name="dni">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="contrasenia"
                   placeholder="Nombre" name="nombre">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Apellido" name="apellido">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Telefono" name="telefono">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Direccion" name="direccion">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Fecha De Nacimiento" name="fecha_nac">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Sector" name="sector">
        </div>
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Secretario
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>