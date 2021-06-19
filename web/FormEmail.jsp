<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <jsp:include page="Head.jsp" />
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
        <title>Enviar Correo</title>
    </head>
    <body>
        <div class="container-fluid" > 
            <div class="row C-medidas">
                <!--MENU INSERTADO-->
                <jsp:include page="Menu.jsp" />
                <div class="col-md-10">
                    <div class="row" id="Contenido-Administrador">

                        <div class="col-md-12" style="border: 2px solid #737373;">
                            <div class="container-fluid">
                                <!-- Inicio del Contenido-->

                                <div style="padding: 50px">
                                    <h2>Formulario Correo</h2>
                                    <h3><%=request.getAttribute("Message")%></h3>
                                    <form action="email" method="post">
                                        <label for="" >De:</label>
                                        <input type="text" class="form-control" value="dluigy.emp.rop@gmail.com" disabled/><br>

                                        <label for="" >Para:</label>
                                        <input type="email" class="form-control" name="recipient" size="50" required=""/><br>


                                        <label for="" >Asunto:</label>
                                        <input type="text" class="form-control" name="subject" size="50" required=""/><br>


                                        <label for="" >Mensaje:</label>
                                        <textarea class="form-control" rows="5" name="content"></textarea><br><br>


                                        <input type="submit" class="btn btn-info btn-lg btn-block" value="Enviar"/></td>

                                    </form>
                                </div>

                                <!--Fin del Contenido-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>