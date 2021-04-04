<%@page import="Modelo.Inventario"%>
<%@page import="ModeloDAO.InventarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Nombretabla</title>
    </head>
    <body>
        <div>
            <%
                InventarioDAO dao = new InventarioDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Inventario u = (Inventario) dao.list(id);
            %>
            <h1>Editar Inventario</h1>
            <form action="Controlador_Inventario">
                <label for="">Id Inventario</label>
                <input type="text" name="txtIdInventario" value="<%= u.getIdInventario() %>"><br>
                <label for="">Id Cantidad</label>
                <input type="text" name="txtCantidad" value="<%= u.getCantidad()  %>"><br>
                <label for="">Fecha de entrada</label>
                <input type="text" name="txtFech_Entrada" value="<%= u.getFech_Entrada()  %>"><br>
                <label for="">Cantidad de entradas</label>
                <input type="text" name="txtCant_Entrada" value="<%= u.getCant_Entrada()  %>"><br>
                <label for="">Cantidad de salidas</label>
                <input type="text" name="txtCant_Salida" value="<%= u.getCant_Salida() %>"><br>
                

                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Inventario?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
