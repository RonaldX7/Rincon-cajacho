
<%@ include file="/include/admin_header.jsp" %>
<%@page import="Modelo.Usuario"%>

<div class="container-fluid">
    <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
    <!-- Page Heading -->
    <h1 class="mt-5" style="text-align: center">Modificar Usuarios</h1>
    <div class="container p-5">
        <div class="row">
            <div class="col">
            </div>
            <form action="svEditarUsuario" method="POST">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                        <input type="text" class="form-control" placeholder="" name="nombre" value ="<%=usu.getNombre()%>" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Dni</span>
                        <input type="text" class="form-control" placeholder="" name="dni" value ="<%=usu.getDni() %>" required>
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">Email</span>
                        <input type="email" class="form-control" placeholder="" name="correo" value ="<%=usu.getEmail()%>"required>

                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">contraseña</span>
                        <input type="password" class="form-control" placeholder="*******" name="contrasena" value ="<%=usu.getContrasena()%>" required>  
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">tipo</span>
                        <select type="text" class="form-select" aria-label="Default select example" name="tipo" value ="<%=usu.getTipo()%>" required>
                            <option selected>Seleccionar</option>
                            <option value="1">Administrador</option>
                            <option value="2">Cliente</option>
                        </select>
                    </div>
                    <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                        <input type="submit"  value="Modificar" class="btn btn-danger"/>
                    </div>
                </div>
            </form>
            <div class="col">
            </div>
        </div>
    </div> 
</div>

<%@ include file="/include/admin_footer.jsp" %>
