

<%@page import="logica.Secretario"%>
<%@page import="logica.Secretario"%>
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
    <h1 class="h3 mb-2 text-gray-800">Ver Secretrarios</h1>
    <p class="mb-4">Todos los secretarios cargados</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Tabla Secretarios</h6>
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
                            <th>Sector</th>
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
                            <th>Sector</th>
                            <th style="width: 210px">Accion</th>
                        </tr>
                    </tfoot>
                    <%List<Secretario> listaSecretarios =  (List) request.getSession().getAttribute("listaSecretarios");
                    %>
                    <tbody>
                        <%for (Secretario secre : listaSecretarios) {

                              

                        %>
                        <tr>
                            <td id="id_paci<%= secre.getId()%>"> <%=secre.getId()%></td>
                            <td><%= secre.getDni()%></td>
                            <td><%= secre.getNombre() %></td>
                            <td><%= secre.getApellido() %></td>
                            <td><%= secre.getTelefono() %></td>
                            <td><%= secre.getDirecion() %></td>
                            <td> <% SimpleDateFormat formatear = new SimpleDateFormat("dd/MM/yyyy");%>  
                                <%= formatear.format(secre.getFecha_nac()) %></td>
                            <td><%= secre.getSector()%></td>
                            
                            
                            
                            <th style="display: flex; width: 230px;">
                                <form name="eliminar" action="SvElimSecre" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red; margin-right: 5px;">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value= <%= secre.getId() %>>
                                </form>
                                
                                <form name="editar" action="SvEditSecre" method="GET">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px;">
                                        <i class="fas fa-pencil-alt"></i> Editar
                                    </button>
                                    <input type="hidden" name="id" value= <%= secre.getId() %>>     
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
