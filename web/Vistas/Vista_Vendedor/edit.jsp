<%@page import="Modelo.Vendedor"%>
<%@page import="ModeloDAO.VendedorDAO"%>
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
                VendedorDAO dao = new VendedorDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Vendedor u = (Vendedor) dao.list(id);
            %>
            <h1>Editar Vendedor</h1>
            
            <form action="Controlador_Vendedor">
                <label for="">Id vendedor</label>
                <input class="form-control" type="text" name="txtIdVendedor" value="<%= u.getIdVendedor() %>"><br>
                <label for="">IdUsuario</label>
                <input class="form-control" type="text" name="txtIdUsuarios_Fk" value="<%= u.getIdUsuarios_Fk() %>"><br>
                <label for="">Numero de ventas</label>
                <input class="form-control" type="text" name="txtNum_Ventas" value="<%= u.getNum_Ventas() %>"><br>
                <label for="">Comision</label>
                <input class="form-control" type="text" name="txtComision" value="<%= u.getComision()  %>"><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Vendedor?accion=listar">Regresar</a>
            </form>
            </div>
            
        </div>
    </body>
</html>