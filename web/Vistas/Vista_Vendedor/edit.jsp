<%@page import="Modelo.Vendedor"%>
<%@page import="ModeloDAO.VendedorDAO"%>
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
                VendedorDAO dao = new VendedorDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Vendedor u = (Vendedor) dao.list(id);
            %>
            <h1>Editar Vendedor</h1>
            
            <form action="Controlador_Vendedor">
                <label for="">Id vendedor</label>
                <input type="text" name="txtIdVendedor" value="<%= u.getIdVendedor() %>"><br>
                <label for="">IdUsuario</label>
                <input type="text" name="txtIdUsuarios_Fk" value="<%= u.getIdUsuarios_Fk() %>"><br>
                <label for="">Numero de ventas</label>
                <input type="text" name="txtNum_Ventas" value="<%= u.getNum_Ventas() %>"><br>
                <label for="">Comision</label>
                <input type="text" name="txtComision" value="<%= u.getComision()  %>"><br>

                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Vendedor?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>