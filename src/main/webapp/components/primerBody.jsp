<%-- 
    Document   : primerBody
    Created on : Mar 31, 2024, 3:09:12 PM
    Author     : Mi equipo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body id="page-top">
    
    <!-- Validacion sesion -->
    <% HttpSession misession = request.getSession();
       String usuario = (String) request.getSession().getAttribute("usuario");

          if (usuario == null) {
          response.sendRedirect("sinLogin.jsp");
        }

    %>
    
    

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-solid fa-tooth"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Clinica Odontologica <sup></sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="">
                    <i class="fas fa-solid fa-bars"></i>
                    <span>Menu</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Gestion
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOdonto"
                   aria-expanded="true" aria-controls="collapseOdonto">
                    <i class="fas fa-hospital-user"></i>
                    <span>Odontologos</span>
                </a>
                <div id="collapseOdonto" class="collapse" aria-labelledby="headingOdonto" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones :</h6>
                        <a class="collapse-item" href="SvOdontologo">Ver Odontologos</a>
                        <a class="collapse-item" href="altaOdontologo.jsp">Alta Odontologos</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePacientes"
                   aria-expanded="true" aria-controls="collapsePacientes">
                    <i class="fas fa-solid fa-bed"></i>
                    <span>Pacientes</span>
                </a>
                <div id="collapsePacientes" class="collapse" aria-labelledby="headingPacientes"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones :</h6>
                        <a class="collapse-item" href=SvPaciente>Ver Pacientes</a>
                        <a class="collapse-item" href="altaPacientes.jsp">Alta Pacientes</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsuarios"
                   aria-expanded="true" aria-controls="collapseUsuarios">
                    <i class="fas fa-solid fa-bed"></i>
                    <span>Usuarios</span>
                </a>
                <div id="collapseUsuarios" class="collapse" aria-labelledby="headingUsuarios"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones :</h6>
                        <a class="collapse-item" href="SvUsuarios">Ver Usuarios</a>
                        <a class="collapse-item" href="altaUsuarios.jsp">Alta Usuarios</a>
                    </div>
                </div>
                
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSecretarios"
                   aria-expanded="true" aria-controls="collapseSecretarios">
                    <i class="fas fa-solid fa-bed"></i>
                    <span>Secretarios</span>
                </a>
                <div id="collapseSecretarios" class="collapse" aria-labelledby="headingSecretarios"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones :</h6>
                        <a class="collapse-item" href="SvSecretario">Ver Secretarios</a>
                        <a class="collapse-item" href="altaSecretarios.jsp">Alta Secretarios</a>
                    </div>
                </div>
                
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTurnos"
                   aria-expanded="true" aria-controls="collapseTurnos">
                    <i class="fas fa-solid fa-bed"></i>
                    <span>Turnos</span>
                </a>
                <div id="collapseTurnos" class="collapse" aria-labelledby="headingTurnos"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones :</h6>
                        <a class="collapse-item" href="SvTurno">Ver Turnos</a>
                        <a class="collapse-item" href="altaTurnos.jsp">Alta Turnos</a>
                    </div>
                </div>
                
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseHorarios"
                   aria-expanded="true" aria-controls="collapseHorarios">
                    <i class="fas fa-solid fa-bed"></i>
                    <span>Horarios</span>
                </a>
                <div id="collapseHorarios" class="collapse" aria-labelledby="headingHorarios"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones :</h6>
                        <a class="collapse-item" href="SvHorario">Ver Horarios</a>
                        <a class="collapse-item" href="altaHorarios.jsp">Alta Horarios</a>
                    </div>
                </div>
                
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->


            <!-- Divider -->
            <!-- <hr class="sidebar-divider d-none d-md-block"> -->

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>



                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">



                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%= request.getSession().getAttribute("usuario") %></span>
                                <img class="img-profile rounded-circle"
                                     src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">


                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Clinica Odontologica</h1>
                    </div>
