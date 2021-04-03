<%@page import="Modelo.Recibo"%>
<%@page import="ModeloDAO.ReciboDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Recibo</title>
    </head>
    <body>
        <div>
            <%
                ReciboDAO dao = new ReciboDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Recibo u = (Recibo) dao.list(id);
            %>
            <h1>Editar Recibo</h1>
            <form action="Controlador_Recibo">
                <label for="">Id Recibo</label>
                <input type="text" name="txtIdRecibo" value="<%= u.getIdRecibo() %>"><br>
                <label for="">Id Vendedor</label>
                <input type="text" name="txtIdVendedor_Fk" value="<%= u.getIdVendedor_Fk() %>"><br>
                <label for="">Id Cliente</label>
                <input type="text" name="txtIdCliente_Fk" value="<%= u.getIdCliente_Fk() %>"><br>
                <label for="">Fecha recibo</label>
                <input type="text" name="txtFech_Recibo" value="<%= u.getFech_Recibo() %>"><br>
                <label for="">Total</label>
                <input type="text" name="txtTotal" value="<%= u.getTotal() %>"><br>

                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Recibo?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>