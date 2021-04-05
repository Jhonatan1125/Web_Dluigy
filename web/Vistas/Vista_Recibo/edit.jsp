<%@page import="Modelo.Recibo"%>
<%@page import="ModeloDAO.ReciboDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
           
        <title>Editar Recibo</title>
    </head>
    <body>
        <div class="container"> 
            <div class="col-lg-6">
                <%
                ReciboDAO dao = new ReciboDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Recibo u = (Recibo) dao.list(id);
            %>
            <h1>Editar Recibo</h1>
            <form action="Controlador_Recibo">
                <label for="">Id Recibo</label>
                <input class="form-control" type="text" name="txtIdRecibo" value="<%= u.getIdRecibo() %>"><br>
                <label for="">Id Vendedor</label>
                <input class="form-control" type="text" name="txtIdVendedor_Fk" value="<%= u.getIdVendedor_Fk() %>"><br>
                <label for="">Id Cliente</label>
                <input class="form-control" type="text" name="txtIdCliente_Fk" value="<%= u.getIdCliente_Fk() %>"><br>
                <label for="">Fecha recibo</label>
                <input class="form-control" type="text" name="txtFech_Recibo" value="<%= u.getFech_Recibo() %>"><br>
                <label for="">Total</label>
                <input class="form-control" type="text" name="txtTotal" value="<%= u.getTotal() %>"><br>

                <input class="btn btn-primary"  type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Recibo?accion=listar">Regresar</a>
            </form>
            </div>
            
        </div>
    </body>
</html>