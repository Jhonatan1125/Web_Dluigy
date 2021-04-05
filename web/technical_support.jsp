
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Contenido/css/Estilo1.css" rel="stylesheet" type="text/css"/>
        
        <title>Technical Support </title>
    </head>
    <body>
        <div class="containerp1">
                <div id="carouselExampleSlidesOnly" class="carouselslide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Contenido/img/Body/xc.png" class="d-block w-100" alt="xc"/>
                            
                        </div>
                        <div class="carousel-item">
                            <img src="Contenido/img/Body/vb.png" class="d-block w-100" alt="vb"/>
                             
                        </div>
                        <div class="carousel-item">
                            <img src="Contenido/img/Body/Conoce_Nuestros_(4).png" class="d-block w-100" alt="Publicidad" />
                               
                        </div>
                    </div>
                </div>
            </div>
            <div class=" containerp2">
                <form action="" name="formulario" id="formulario">
                    <h3>Technical Support <span><i class="fas fa-headset"></i></span></h3>
                    <input class="form control Name fas fa-headset" type="text" placeholder="Name" />
                    <input class="form control Phone" type="text" placeholder="Phone" />
                    <input class="form control Email" type="text" placeholder="Email" />
                    <input class="form control Message" type="text" placeholder="Message" />
                    <button type="button" class="btn-grad btnAction" onclick="enviar()">Send</button>
                </form>
            </div>
            <hr class="my-5" />
    </body>
</html>
