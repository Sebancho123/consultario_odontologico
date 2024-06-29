<%@page import="logica.Turno"%>
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
                    
                        
                            <th>Id</th>
                            <th>Afeccion</th>
                            <th>Fecah del turno</th>
                            <th>Hora del Turno</th>
                            <th>Id Odontologo</th>
                            <th>Nombre Odontologo</th>
                            <th>Id Paciente</th>
                            <th>Nombre Paciente</th>
                            <th style="width: 210px">Accion</th>
                        
                    
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Afeccion</th>
                            <th>Fecha del turno</th>
                            <th>Hora del Turno</th>
                            <th>Id Odontologo</th>     
                            <th>Nombre Odontologo</th>
                            <th>Id Paciente</th>
                            <th>Nombre Paciente</th>
                            <th style="width: 210px">Accion</th>
                        </tr>
                    </tfoot>
                    <%List<Turno> listaTurnosOdo=  (List) request.getSession().getAttribute("listaTurnos");
                      Odontologo odon = (Odontologo) request.getSession().getAttribute("Odonto");
                    %>
                    <tbody>
                        <%for (Turno turno : listaTurnosOdo) {
                              String nombreOdo = turno.getOdonto().getNombre();
                              if (nombreOdo.equals(odon.getNombre())) {
                              

                        %>
                        
                        <tr>

                            <td id="id_paci<%= turno.getId_turno()%>"> <%=turno.getId_turno()%></td>
                            <td><%= turno.getAfeccion()%></td>
                            <td><% SimpleDateFormat formatear = new SimpleDateFormat("dd/MM/yyyy");%>
                                <%= formatear.format(turno.getFecha_turno()) %></td>
                            <td><%= turno.getHora_turno()%></td>
                            <td><%= turno.getOdonto().getId() %></td>
                            <td><%= turno.getOdonto().getNombre() %></td>
                            <td><%= turno.getPaciente().getId() %></td>
                            <td><%= turno.getPaciente().getNombre() %></td>
                            
                            
                            <th style="display: flex; width: 230px;">
                                <form name="eliminar" action="SvElimOdonto" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red; margin-right: 5px;">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value= <%= turno.getId_turno()%>>
                                </form>
                                <form name="atender" action="SvAtenPaci" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px;">
                                        <i class="fas fa-trash-alt"></i> Atender
                                    </button>
                                    <input type="hidden" name="id" value= <%= turno.getId_turno()%>>
                                </form>
                                
                            </th>
                            
                        </tr>
                        <%}%>
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