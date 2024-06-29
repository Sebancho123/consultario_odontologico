
<%@page import="logica.Horario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>


<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ver Horarios</h1>
    <p class="mb-4">Todos los Horarios cargados</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Tabla Horarios</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Numero</th>
                            <th>Inicio del horario</th>
                            <th>Fin del horario</th>
                            <th style="width: 210px">Accion</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Numero</th>
                            <th>Inicio del horario</th>
                            <th>Fin del horario</th>
                            <th style="width: 210px">Accion</th>
                        </tr>
                    </tfoot>
                    <%List<Horario> listaHorarios =  (List) request.getSession().getAttribute("listaHorarios");
                    %>
                    <tbody>
                        <%for (Horario horario : listaHorarios) {

                              

                        %>
                        
                        <tr>

                            <td id="id_paci<%= horario.getId_horario()%>"> <%=horario.getId_horario()%></td>
                            <td><%= horario.getHorario_inicio()%></td>
                            <td><%= horario.getHorario_fin()%></td>
                            
                            
                            <th style="display: flex; width: 230px;">
                                <form name="eliminar" action="SvElimHora" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red; margin-right: 5px;">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value= <%= horario.getId_horario()%>>
                                </form>
                                
                                <form name="editar" action="SvEditHora" method="GET">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px;">
                                        <i class="fas fa-pencil-alt"></i> Editar
                                    </button>
                                    <input type="hidden" name="id" value= <%= horario.getId_horario()%>>      
                                </form
                                
                            </th>
                            
                        </tr>
                        
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


<%@include  file= "components/finalBody.jsp"%>
