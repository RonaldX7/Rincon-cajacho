<%@page import="Modelo.Producto"%>
<%@ include file="/include/admin_header.jsp" %>

<div class="container-fluid">
    <h1 class="mt-5" style="text-align: center">Tabla Productos</h1>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>CODIGO</th>
                        <th>NOMBRE</th>
                        <th>PRECIO</th>
                        <th>STOCK</th>
                        <th>IMAGEN</th>
                        <th>DESCRIPCION</th>
                    </tr>
                </thead>
                <tbody>
                    <%  List<Producto> listaProductos = (List) request.getSession().getAttribute("listaProductos");
                        for (Producto prod : listaProductos) {
                    %>
                    <tr>
                        <th><%= prod.getId()%></th>
                        <th><%= prod.getCodigo()%></th>
                        <td><%= prod.getNombre()%></td>
                        <td><%= prod.getPrecio()%></td>
                        <td><%= prod.getStock()%></td>
                        <td>
                            <img src="<%= prod.getImagen()%>" width="60"/>
                        </td>
                        <td><%= prod.getDescripcion()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
    <div id="ModificarModal" class="modal fade">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Ingregar datos</h4>
                </div>
                <div class="modal-body">
                    <p>Ingrese la id del producto que quiere editar:</p>
                    <form action="svEditarProducto" method="get">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">ID</span>
                            <input type="text" class="form-control" placeholder="" name="id_edit" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Editar</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <div id="EliminarModal" class="modal fade">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">¿Estás seguro?</h4>
                </div>
                <div class="modal-body">
                    <p>Ingrese la id del producto que quiere Eliminar:</p>
                    <form action="svEliminarProducto" method="post">
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
    <a href="#ModificarModal" type="button" class="btn btn-primary" data-toggle="modal">Modificar</a>
    <a href="#EliminarModal" type="button" class="btn btn-danger" data-toggle="modal">Eliminar</a>
</div>

<%@ include file="/include/admin_footer.jsp" %>
