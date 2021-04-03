<%@page import="Modelo.Fidelizacion"%>
<%@page import="ModeloDAO.FidelizacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Fidelizacion</title>
    </head>
    <body>
        <div>
            <%
                    FidelizacionDAO dao = new FidelizacionDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Fidelizacion u = (Fidelizacion) dao.list(id);
                %>
            <h1>Editar Fidelizacion</h1>
            <form action="Controlador_Fidelizacion">
                <label for="">Id</label>
                <input type="text" name="txtIdFidelizacion" value="<%= u.getIdFidelizacion() %>"><br>
                <label for="">Puntaje Total</label>
                <input type="text" name="txtPunt_Total" value="<%= u.getPunt_Total()  %>"><br>
                <label for="">Fecha de Caducidad</label>
                <input type="text" name="txtFech_Caducidad" value="<%= u.getFech_Caducidad() %>"><br>
                

                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Fidelizacion?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>