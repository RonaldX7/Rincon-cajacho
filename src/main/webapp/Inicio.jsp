
<%@ include file="/include/header.jsp" %>

<div class="text-center mx-auto">
    <img src="img/logo.png" class="rounded w-40 logo" alt="...">
</div>
<br><br>
<br>
<section id="somos-proya" class="bg-light">
    <div class="contenedor">
        <div class="img-container mx-auto"><img src="img/quesos.png" alt=""></div>
        <div class="texto">
            <p class="fs-1 fw-bold fw-bold"><span class="text-danger">Delicias</span> tradicionales</p>
            <p class="font-weight-light ">El queso cajamarquino es un producto típico regional de Cajamarca, 
                Perú, que es reconocido a nivel nacional y es parte de los símbolos históricos y culturales de la región. 
                Además de poseer características únicas, su condición de producto típico regional lo convierte en un producto de identidad local que representa a Cajamarca</p>
            <a href="Productos.jsp"> <button type="button" class="btn btn-danger">Conoce nuestros productos</button></a>
        </div>
    </div>
</section>

<section id="somos-proya">
    <div class="contenedor">
        <div class="mx-auto"><img src="img/datos-servicios-domicilio.png" class="w-50" alt=""></div> <br>
        <div class="texto">
            <p class="fs-1 fw-bold"><span class="text-danger">Venta</span> a domicilio</p>
            <ol class="list list-group-numbered">
                <li class="list-group-item fs-5 fw-bold">Realiza tus pedidos <span class="text-danger">(*)</span></li>
                <p class="fw-lighter">Lunes a Sábado de 08:30 am a 01:00 pm </p>
                <li class="list-group-item fs-5 fw-bold">Costo de reparto S/5.00</li>
                <p class="fw-lighter">Envío gratis por compras mayores a S/ 60.00</p>
                <li class="list-group-item fs-5 fw-bold">Modalidades de pago</li>
                <p class="fw-lighter">Los pagos podrán ser en efectivo o por transferencia bancaria Vía BCP o YAPE
                </p>
                <li class="list-group-item fs-5 fw-bold">Recibe tu pedido en la puerta de tu casa</li>
                <p class="fw-lighter">Pedido mínimo de S/ 40.00 </p>
            </ol>
        </div>
    </div>
</section>

<section>
    <p class="fs-1 fw-bold text-center"><span class="text-danger">Nuestros</span> productos</p>

    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="col mb-5">
                <div class="card h-100">
                    <img src="https://www.quesostradicion.com/img/products/quesoandino.jpg" class="card-img-top" alt="...">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="card-title fw-bold">Andino</h5>
                            <p class="card-text fs-6 fw-lighter">El queso Andino es originario de los andes peruanos. Mantecoso,
                                de pasta suave y graso, de color amarillo.</p>
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-danger" rounded-pill href="Productos.jsp">ver más</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <img src="https://www.quesostradicion.com/img/products/edam.jpg" class="card-img-top" alt="...">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="card-title fw-bold">Edam</h5>
                            <p class="card-text fs-6 fw-lighter">Es un queso de pasta semidura, prensada y lisa. El Edam suave se puede
                                comer acompañado de frutas.</p>
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-danger" rounded-pill href="Productos.jsp">ver más</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <img src="https://www.quesostradicion.com/img/products/paria.jpg" class="card-img-top" alt="...">
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="card-title fw-bold">Paria</h5>
                            <p class="card-text fs-6 fw-lighter">El queso Paria un queso semiduro preparado con leche de vaca, propio del altiplano y
                                la zona sur del Perú.</p>
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-danger" rounded-pill href="Productos.jsp">ver más</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<footer class="bg-dark text-center text-white">
    <div class="container p-5">
        <div class="row">
            <div class="col">
                <section id="somos-proya" class="">
                    <div class="contenedor">
                        <div class="texto">
                            <p class="fs-1 fw-bold">Ubícanos</p>
                        </div>
                    </div>
                </section>
            </div>

            <div class="col align-content-end g-0">
                <iframe class="mapa"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.5651876426027!2d-77.06697182396134!3d-12.073409642399383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c91b08078acf%3A0xb4c816e70c25153e!2sEl%20Rinconcito%20Cajamarquino!5e0!3m2!1ses-419!2spe!4v1685448938943!5m2!1ses-419!2spe"
                        width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>

    <%@ include file="/include/footer.jsp" %>