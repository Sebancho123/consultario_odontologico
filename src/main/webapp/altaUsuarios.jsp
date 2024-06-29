

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Alta Usuarios</h1>
<p>Este es el apartado para dar alta de ususario</p>

<form class="user" action="SvUsuarios" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombreusu"
                   placeholder="Nombre Usuario"name="nombreusu">
        </div>
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="password" class="form-control form-control-user" id="contrasenia"
                   placeholder="Contrasenia" name="contrasenia">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Rol"name="rol">
        </div>
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Usuario
    </button>>
</form>

<%@include  file= "components/finalBody.jsp"%>
