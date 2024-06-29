
<%@page import="logica.Usuario"%>
<%@page import="logica.Paciente"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="logica.Odontologo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include  file= "components/header.jsp"%>
<%@include  file= "components/primerBody.jsp"%>


<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ver Odontologos</h1>
    <p class="mb-4">Todos los odontologos cargados</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Tabla Odontologos</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Dni</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                            <th>Fecha De Nacimiento</th>
                            <th>Especialidad</th>
                            <th>Horario</th>

                            <th style="width: 230px">Accion</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Dni</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                            <th>Fecha De Nacimiento</th>
                            <th>Especialidad</th>
                            <th>Horario</th>
                            <th style="width: 230px">Accion</th>
                        </tr>
                    </tfoot>
                    <%List<Odontologo> listaOdontologos =  (List) request.getSession().getAttribute("listaOdontologos");
                    %>
                    <tbody>
                        <%for (Odontologo odo : listaOdontologos) {

                              

                        %>
                        
                        <tr>

                            <td id="id_paci<%= odo.getId()%>"> <%=odo.getId()%></td>
                            <td><%= odo.getDni()%></td>
                            <td><%= odo.getNombre() %></td>
                            <td><%= odo.getApellido() %></td>
                            <td><%= odo.getTelefono() %></td>
                            <td><%= odo.getDirecion() %></td>
                            <td> <% SimpleDateFormat formatear = new SimpleDateFormat("dd/MM/yyyy");%>  
                                <%= formatear.format(odo.getFecha_nac()) %></td>
                            <td><%= odo.getEspecialidad() %></td>
                            <td><%= odo.getHorario().getId_horario() %></td> 
                            
                            
                            <th style="display: flex; width: 280px;">
                                <form name="eliminar" action="SvElimOdonto" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red; margin-right: 5px;">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value= <%= odo.getId() %>>
                                </form>
                                
                                <form name="editar" action="SvEditOdonto" method="GET">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px; margin-right: 5px;">
                                        <i class="fas fa-pencil-alt"></i> Editar
                                    </button>
                                    <input type="hidden" name="id" value= <%= odo.getId() %>>      
                                </form>
                                
                                
                                <form name="verTurnos" action="SvVerTurnosOdonto" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 10px">
                                        <i class="fas fa-eye-alt"></i> Ver Turnos
                                    </button>
                                    <input type="hidden" name="id" value= <%= odo.getId() %>> 
                                </form>
                                
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