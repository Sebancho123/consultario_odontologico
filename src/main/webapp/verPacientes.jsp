

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
    <h1 class="h3 mb-2 text-gray-800">Ver Pacientes</h1>
    <p class="mb-4">Todos los pacientes cargados</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Tabla Paciente</h6>
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
                            <th>Obra social</th>
                            <th>Tipo sangre</th>
                            <th style="width: 210px">Accion</th>
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
                            <th>Obra social</th>
                            <th>Tipo sangre</th>
                            <th style="width: 210px">Accion</th>
                        </tr>
                    </tfoot>
                    <%List<Paciente> listaPacientes =  (List) request.getSession().getAttribute("listaPacientes");
                    %>
                    <tbody>
                        <%for (Paciente paci : listaPacientes) {

                              

                        %>
                        <tr>
                            <td id="id_paci<%= paci.getId()%>"> <%=paci.getId()%></td>
                            <td><%= paci.getDni()%></td>
                            <td><%= paci.getNombre() %></td>
                            <td><%= paci.getApellido() %></td>
                            <td><%= paci.getTelefono() %></td>
                            <td><%= paci.getDirecion() %></td>
                            <td> <% SimpleDateFormat formatear = new SimpleDateFormat("dd/MM/yyyy");%>  
                                <%= formatear.format(paci.getFecha_nac()) %></td>
                            <td><%= paci.isTiene_OS() %></td>
                            <td><%= paci.getTipo_sangre() %></td>
                            
                            
                            
                            <th style="display: flex; width: 230px;">
                                <form name="eliminar" action="SvElimPaci" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red; margin-right: 5px;">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value= <%= paci.getId() %>>
                                </form>
                                
                                <form name="editar" action="SvEditPaci" method="GET">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px;">
                                        <i class="fas fa-pencil-alt"></i> Editar
                                    </button>
                                    <input type="hidden" name="id" value= <%= paci.getId() %>>      
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