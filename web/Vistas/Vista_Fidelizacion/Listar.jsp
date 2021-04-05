<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Fidelizacion"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.FidelizacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listado Fidelizacion</title>
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="../../Menu.jsp" />
        <div class="container">
            <h1>Listado de Fidelizacion</h1>
            <a class="btn btn-success btn-sm" href="Controlador_Fidelizacion?accion=add">Agregar Nuevo</a><br>
            <br>
            <table class="table table-bordered" border="1">
                <thead class="thead-dark">
                    <tr>
                        <th>IdFidelizacion</th>
                        <th>Puntaje Total</th>
                        <th>Fecha de Caducidad</th>
                        <th>OPCIONES</th>
                    </tr>
                </thead>
                <%
                    FidelizacionDAO dao = new FidelizacionDAO();
                    List<Fidelizacion> list = dao.listar();
                    Iterator<Fidelizacion> iter = list.iterator();
                    Fidelizacion tab = null;
                    while (iter.hasNext()) {//No cerrar este corchete
                        tab = iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%= tab.getIdFidelizacion()%></td>
                        <td><%= tab.getPunt_Total()%></td>
                        <td><%= tab.getFech_Caducidad()%></td>
                        <td>
                            <a class="btn btn-success btn-sm" href="Controlador_Fidelizacion?accion=editar&id=<%= tab.getIdFidelizacion()%>">Editar</a>
                            <a class="btn btn-danger btn-sm" href="Controlador_Fidelizacion?accion=eliminar&id=<%= tab.getIdFidelizacion()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div><!--1 Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</body>
</html>
