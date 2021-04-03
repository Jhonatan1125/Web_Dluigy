<%@page import="Modelo.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
    </head>
    <body>
        <div>
            <%
                    ClienteDAO dao = new ClienteDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Cliente u = (Cliente) dao.list(id);
                %>
            <h1>Editar Cliente</h1>
            <form action="Controlador_Cliente">
                <label for="">Id Cliente</label>
                <input type="text" name="txtidCliente" value="<%= u.getIdCliente() %>"><br>
                <label for="">Id Usuario</label>
                <input type="text" name="txtIdUsuarios_Fk" value="<%= u.getIdUsuarios_Fk() %>"><br>
                <label for="">Id Fidelizacion</label>
                <input type="text" name="txtIdFidelizacion_Fk" value="<%= u.getIdFidelizacion_Fk() %>"><br>
                <label for="">Valor total Compras</label>
                <input type="text" name="txtVal_Total_Comp" value="<%= u.getVal_Total_Comp() %>"><br>
                <label for="">Numero de compras</label>
                <input type="text" name="txtNum_Comp" value="<%= u.getNum_Comp() %>"><br>
                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Cliente?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>