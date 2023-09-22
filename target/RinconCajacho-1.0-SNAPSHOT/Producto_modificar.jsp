<%@page import="Modelo.Producto"%>
<%@ include file="/include/admin_header.jsp" %>

<div class="container-fluid">
    
    <% Producto prod = (Producto) request.getSession().getAttribute("prodEditar");%>
    <!-- Page Heading -->
    <h1 class="mt-5" style="text-align: center">Modificar Productos</h1>
    <div class="container p-5">
        <div class="row">
            <div class="col">
            </div>
            <form action="svEditarProducto" method="POST">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">N°</span>
                        <input type="text" class="form-control" placeholder="" name="CodigoProd" value ="<%=prod.getCodigo()%>" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                        <input type="text" class="form-control" placeholder="" name="NombreProd" value ="<%=prod.getNombre()%>" required>
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">s/</span>
                        <input type="text" class="form-control" placeholder="Precio" name="PrecioProd" value ="<%=prod.getPrecio()%>" required>

                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">Stock</span>
                        <input type="text" class="form-control" placeholder="" name="StockProd" value ="<%=prod.getStock()%>" required>  
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">imagen</span>
                        <input type="text" class="form-control" placeholder="Ingresa url" name="ImagenProd" value ="<%=prod.getImagen()%>" required>

                    </div>
                    <div class="mb-3">
                        <textarea class="form-control" name="DescripcionProd" rows="3" placeholder="Descripción" value ="<%=prod.getDescripcion()%>" required></textarea>
                    </div>

                    <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                        <input type="submit" value="Modificar" class="btn btn-danger"/>
                    </div>
                </div>
            </form>
            <div class="col">
            </div>
        </div>
    </div> 
</div>

<%@ include file="/include/admin_footer.jsp" %>
