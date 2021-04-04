<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informacion Dluigy</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <link href="Contenido/css/Estilo.css" rel="stylesheet" type="text/css"/>
        <link href="Contenido/css/Estilo-Pri.css" rel="stylesheet" type="text/css"/>
        <link href="Contenido/css/normalize.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp" />
        <!--INICIO DEL CUERPO-->
        <section id="objetivo">
            <div class="container-fluid">
                <div class="contenido-central">
                    <h2> <b>Nuestro Objetivo</b></h2>
                    <p id="informacion">
                        <b>Buscamos ser una tienda reconocida en el mercado de las tiendas de ropa formal y con materiales de calidad.</b>
                    </p>
                </div>
            </div>
        </section>
        <section id="trabajamos">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <p class="text-center" id="informacion"><b>Ofrecemos a nuestros clientes el servicio de perzonalizar sus prendas de acuerdo a sus necesidades y gustos.</b></p>
                    </div>
                    <div class="col-lg-6">
                        <video class="video-fluid z-depth-1" autoplay loop controls muted>
                            <source src="Contenido/img/Body/Video_costura.mp4" type="video/mp4"> </video>
                    </div>
                </div>
                <div class="row margen">
                    <div class="col-md-6 d-none d-sm-block">
                        <img class="Imagenes-medianas" src="Contenido/img/Body/Foto-Trabajamos.jpg" alt="Foto como trabajamos">
                        <img class="Imagenes-medianas" src="Contenido/img/Body/Foto-Trabajamos2.jpg" alt="Foto como trabajamos 2">
                    </div>
                    <div class="col-md-6">
                        <p class="text-center" id="informacion"><b>Trabajamos con las siguientes: <br> -Fabrica1 <br> -Fabrica2 <br> -Fabrica3</b></p>
                    </div>
                </div>
            </div>
        </section>
        <section id="contactenos">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-xs-12 margen-contactenos">
                        <h2 class="text-center"><b>Estamos ubicados en:</b></h2>
                        <p class="text-center" id="informacion">Calle 19 #99-34 <br><br><strong>Horarios:</strong> 8 Am - 7 Pm
                            <br><strong>Festivos:</strong> 8 Am - 9 Pm</p>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <iframe class="mapa"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.548695392043!2d-74.14569414987032!3d4.674238143171795!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9c8c6939c4cf%3A0x4643cd5c6896ab3b!2zQ2wuIDE5ICM5OS0zNCwgRm9udGliw7NuLCBCb2dvdMOh!5e0!3m2!1ses!2sco!4v1599882413363!5m2!1ses!2sco"
                                frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                </div>
            </div>
        </section>
        <!--FIN DEL CUERPO-->
        <jsp:include page="Footer.jsp" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>