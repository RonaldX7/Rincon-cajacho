
<%@ include file="/include/header.jsp" %>

<section class="vh-100" style="background-color: #d2cfcf;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-xl-10">
                <div class="card" style="border-radius: 1rem;">
                    <div class="row g-0">
                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                            <img src="https://www.quesostradicion.com/img/contact.png"
                                 alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                        </div>
                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                            <div class="card-body p-4 p-lg-5 text-black">
                                <form method="post" action="svContacto">
                                    <div class="fs-1 fw-bold" style="text-align: center">Escríbenos</div>

                                    <div class="form-outline mb-2">
                                        <label class="form-label" for="text">Nombre</label>
                                        <input type="text" name="nombre" class="form-control form-control-lg" required/>
                                    </div>
                                    <div class="form-outline mb-2">
                                        <label class="form-label" for="email">Correo Electrónico</label>
                                        <input type="email" name="correo" class="form-control form-control-lg" required/>  
                                    </div>

                                    <div class="form-outline mb-2">
                                        <label class="form-label" for="message">Mensaje</label>
                                        <textarea type="text" class="form-control" name="mensaje" rows="4" required></textarea>
                                    </div>
                                    <div class="pt-1 mb-2 mt-4" style="text-align: center">
                                        <button type="submit" class="btn btn-outline-danger">Enviar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="bg-dark text-center text-white">


    <%@ include file="/include/footer.jsp" %>