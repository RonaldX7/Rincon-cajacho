<%@ include file="/include/admin_header.jsp" %>
<%@page import="Modelo.Contacto"%>

<div class="container-fluid">
    <h1 class="mt-5" style="text-align: center">Tabla Mensajes</h1>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>CORREO</th>
                        <th>MENSAJE</th>
                    </tr>
                </thead>
                <tbody>
                    <%  List<Contacto> listaContactos = (List) request.getSession().getAttribute("listaContactos");
                        for (Contacto cont : listaContactos) {
                    %>
                    <tr>
                        <th><%= cont.getId()%></th>
                        <td><%= cont.getNombre()%></td>
                        <td><%= cont.getCorreo()%></td>
                        <td><%= cont.getMensaje()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>

    <div id="EliminarModal" class="modal fade">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">¿Estás seguro?</h4>
                </div>
                <div class="modal-body">
                    <p>Ingrese la id del mensaje que quiere Eliminar:</p>
                    <form action="svEliminarMensaje" method="post">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">ID</span>
                            <input type="text" class="form-control" placeholder="" name="id_eliminar" required>
                        </div>
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
    <a href="#EliminarModal" type="button" class="btn btn-danger" data-toggle="modal">Eliminar</a>
</div>

<%@ include file="/include/admin_footer.jsp" %>
