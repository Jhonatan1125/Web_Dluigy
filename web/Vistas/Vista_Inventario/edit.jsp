<%@page import="Modelo.Inventario"%>
<%@page import="ModeloDAO.InventarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">       
        <title>Editar Nombretabla</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                 <%
                InventarioDAO dao = new InventarioDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Inventario u = (Inventario) dao.list(id);
            %>
            <h1>Editar Inventario</h1>
            <form action="Controlador_Inventario">
                <label for="">Id Inventario</label>
                <input class="form-control" type="text" name="txtIdInventario" value="<%= u.getIdInventario() %>"><br>
                <label for="">Id Cantidad</label>
                <input class="form-control" type="text" name="txtCantidad" value="<%= u.getCantidad()  %>"><br>
                <label for="">Fecha de entrada</label>
                <input class="form-control" type="text" name="txtFech_Entrada" value="<%= u.getFech_Entrada()  %>"><br>
                <label for="">Cantidad de entradas</label>
                <input class="form-control" type="text" name="txtCant_Entrada" value="<%= u.getCant_Entrada()  %>"><br>
                <label for="">Cantidad de salidas</label>
                <input class="form-control" type="text" name="txtCant_Salida" value="<%= u.getCant_Salida() %>"><br>
                

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Inventario?accion=listar">Regresar</a>
            </form>
            </div>
           
        </div>
    </body>
</html>
