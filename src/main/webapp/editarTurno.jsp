<%@page import="logica.Turno"%>
<%@page import="logica.Odontologo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>Editar Turno</h1>
<p>Este es el apartado para editar un Turno</p>

<%Turno turno = (Turno) request.getSession().getAttribute("editTurno");%>

<form class="paci" action="SvEditTur" method="POST">
    <div class="form-group col">
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="afeccion"
                   placeholder="Afeccion" value="<%= turno.getAfeccion()%>" name="afeccion">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="fechaTur"
                   <%SimpleDateFormat formatear = new SimpleDateFormat("dd/MM/yyyy");%>
                   placeholder="Fecha Turno" 
                   value=" <%= formatear.format(turno.getFecha_turno()) %>" name="fechaTur">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="horaTur"
                   placeholder="Hora Turno"  value=" <%= turno.getHora_turno()%>" name="horaTur">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombreOdo"
                   placeholder="Nombre Paciente"  value=" <%= turno.getOdonto()%>" name="nombreOdo">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombrePaci"
                   placeholder="Direccion"  value="<%= turno.getPaciente()%>" name="nombrePaci">
        </div>     
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Editar Turno
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>
