
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>

<h1>alta Odontologos</h1>
<p>Este es el apartado para hacer el alta de un odontologo</p>

<form class="user" action="SvHorario" method="POST">
    <div class="form-group col">

        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="ini_hora"
                   placeholder="Inicio del horario" name="ini_hora">
        </div>

        <div class="col-sm-6 mb-3 mb-sm-2">
            <input type="text" class="form-control form-control-user" id="fin_hora"
                   placeholder="Fin del horario" name="fin_hora">
        </div>

    </div>

    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Horario
    </button>
</form>

<%@include  file= "components/finalBody.jsp"%>




