


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.Secretario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Editar Secretario</h1>
<p>Este es el apartado para editar a un secretario</p>

<% Secretario secre = (Secretario) request.getSession().getAttribute("editSecre"); %>

<form class="user" action="SvEditSecre" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombreusu"
                   placeholder="Dni" value="<%= secre.getDni() %>" name="dni">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="contrasenia"
                   placeholder="Nombre" value="<%= secre.getNombre()%>" name="nombre">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Apellido" value="<%= secre.getApellido()%>" name="apellido">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Telefono" value="<%= secre.getTelefono()%>" name="telefono">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Direccion" value="<%= secre.getDirecion()%>"  name="direccion">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Fecha De Nacimiento"
                   <% SimpleDateFormat forme = new SimpleDateFormat("dd/MM/yyyy"); %>
                   value="<%= forme.format(secre.getFecha_nac())%>"
                   name="fecha_nac">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="rol"
                   placeholder="Sector" value="<%= secre.getSector()%>" name="sector">
        </div>
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Editar Secretario
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>