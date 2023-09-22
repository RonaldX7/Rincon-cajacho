<%@ include file="/include/admin_header.jsp" %>

<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="mt-5" style="text-align: center">Agregar Productos</h1>
    <div class="container p-5">
        <div class="row">
            <div class="col">
            </div>
            <form action="svAgregarProducto" method="POST">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">N°</span>
                        <input type="text" class="form-control" placeholder="" name="CodigoProd">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                        <input type="text" class="form-control" placeholder="" name="NombreProd">
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">s/</span>
                        <input type="text" class="form-control" placeholder="Precio" name="PrecioProd">

                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">Stock</span>
                        <input type="text" class="form-control" placeholder="" name="StockProd">  
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">imagen</span>
                        <input type="text" class="form-control" placeholder="Ingresa url" name="ImagenProd">

                    </div>
                    <div class="mb-3">
                        <textarea class="form-control" name="DescripcionProd" rows="3" placeholder="Descripción"></textarea>
                    </div>

                    <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                        <input type="submit" name="btnIngresar" value="Agregar" class="btn btn-danger"/>
                    </div>
                </div>
            </form>
            <div class="col">
            </div>
        </div>
    </div> 
</div>

<%@ include file="/include/admin_footer.jsp" %>
