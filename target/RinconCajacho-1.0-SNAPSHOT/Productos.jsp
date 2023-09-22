
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Controller"%>
<%@ include file="/include/header.jsp" %>

<section>
    <p class="fs-1 fw-bold text-center"><span class="text-danger">Nuestros</span> productos</p>

    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

            <%  Controller control = new Controller();
                List<Producto> listaProductos = new ArrayList<>();
                listaProductos = control.traerProductos();

                for (Producto prod : listaProductos) {
            %>
            <div class="col mb-5">
                <div class="card h-100">
                    <img src="<%= prod.getImagen()%>" class="card-img-top" alt="...">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="card-title fw-bold"><%= prod.getNombre()%></h5>
                            <p class="card-text fs-6 fw-lighter"><%= prod.getDescripcion()%></p>
                            <div class="card-text fw-bold">
                                S/<%= prod.getPrecio()%>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-danger mt-auto" href="#">Añadir al carrito</a></div>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</section>

<br>
<footer class="bg-dark text-center text-white"> 
    <section>
        <div class="jumbotron jumbotron-fluid p-5 bg-black text-center">
            <div class="container">
                <div>
                    <h3 class="display-6 text-white">¿Interesado en nuestros productos?</h3>
                </div>
            </div>
            <div class="mx-auto">
                <a href="Contactanos.jsp"><button type="button" class="btn btn-outline-light rounded-pill"> Contáctanos </button></a>
            </div>
        </div>
    </section>

    <%@ include file="/include/footer.jsp" %>    