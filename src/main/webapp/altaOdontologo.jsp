                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>alta Odontologos</h1>
<p>Este es el apartado para hacer el alta de un odontologo</p>

<form class="user" action="SvOdontologo" method="POST">
    <div class="form-group col">
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="dni"
                   placeholder="Dni"name="dni">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="nombre"
                   placeholder="Nombre"name="nombre">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="apellido"
                   placeholder="Apellido"name="apellido">
        </div>
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="telefono"
                   placeholder="Telefono"name="telefono">
        </div>
        
        
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="direc"
                   placeholder=" Direccion" name="direc">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text"  class="form-control form-control-user" id="fechanac"
                   placeholder="Fecha de Nacimiento"  name="fechanac">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="especialidad"
                   placeholder="Especialidad"name="especialidad">
        </div>
        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="num_hora"
                   placeholder="Numero de horario"name="num_hora">
        </div>
        
    </div>
    
    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Odontologo
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>                                                                                                                                                                  