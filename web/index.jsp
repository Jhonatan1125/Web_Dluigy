<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Head.jsp" /> <!--Ya incluye el boostrap 4 -->
        <link href="Contenido/css/estilo4.css" rel="stylesheet" type="text/css"/>
        <title>Dluigy</title>
    </head>
    <body>
        <jsp:include page="Nav.jsp" />
        <div>


            <div class="container-fluid container1">

                <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">

                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner" role="listbox">

                        <div class="carousel-item active">
                            <img src="Contenido/img/Body/Conoce_Nuestros_(4).png" class="d-block w-100 slider-top" alt="First slide" />
                            
                        </div>

                        <div class="carousel-item">
                            <img src="Contenido/img/Body/Conoce_Nuestros_(5).png" class="d-block w-100 slider-top" alt="Second slide" />
                        </div>

                        <div class="carousel-item">
                            <img src="Contenido/img/Body/Conoce_Nuestros_(10).png" class="d-block w-100 slider-top" alt="Third slide" />
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>

                </div>
            </div>
            <!--Inicio card categorias-->
            <section id="portfolio">
                <div class="container-fluid container5">
                    <div class="content center">
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="portfolio-container">
                                <a href="#">
                                    <img src="Contenido/img/Body/1.png" alt="Qries" width="450" height="300" />
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="portfolio-container">
                                <div class="portfolio-details">
                                </div>
                                <a href="#">
                                    <img src="Contenido/img/Body/2.png" alt="Qries" width="450" height="300" />
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="portfolio-container">
                                <a href="#">
                                    <img src="Contenido/img/Body/3 (1).png" alt="Qries" width="450" height="300" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


        </div>
        <jsp:include page="Footer.jsp" /><!--ya incluye en boostrap dentro-->
    </body>
</html>
