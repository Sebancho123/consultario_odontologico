

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Editar Usuarios</h1>
<p>Este es el apartado para Editar un ususario</p>

<% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar"); %>

<form class="user" action="SvEditUsuarios" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombreusu"
                   placeholder="Nombre Usuario" value="<%= usu.getNombre_usuario() %>" name="nombreusu">
        </div>
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="password" class="form-control form-control-user" id="contrasenia"
                   placeholder="Contrasenia" value="<%= usu.getContrasenia()%>" name="contrasenia">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Rol" value="<%= usu.getRol() %>" name="rol">
        </div>
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Editar Usuario
    </button>>
</form>

<%@include  file= "components/finalBody.jsp"%>
