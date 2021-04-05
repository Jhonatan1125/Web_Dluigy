<%@page import="Modelo.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">        
        <title>Editar Cliente</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    ClienteDAO dao = new ClienteDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Cliente u = (Cliente) dao.list(id);
                %>
            <h1>Editar Cliente</h1>
            <form action="Controlador_Cliente">
                <label for="">Id Cliente</label>
                <input class="form-control" type="text" name="txtidCliente" value="<%= u.getIdCliente() %>"><br>
                <label for="">Id Usuario</label>
                <input class="form-control" type="text" name="txtIdUsuarios_Fk" value="<%= u.getIdUsuarios_Fk() %>"><br>
                <label for="">Id Fidelizacion</label>
                <input class="form-control" type="text" name="txtIdFidelizacion_Fk" value="<%= u.getIdFidelizacion_Fk() %>"><br>
                <label for="">Valor total Compras</label>
                <input class="form-control" type="text" name="txtVal_Total_Comp" value="<%= u.getVal_Total_Comp() %>"><br>
                <label for="">Numero de compras</label>
                <input class="form-control" type="text" name="txtNum_Comp" value="<%= u.getNum_Comp() %>"><br>
               
                <input class="btn btn-primary"  type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Cliente?accion=listar">Regresar</a>
            </form>
            </div>
            
        </div>
    </body>
</html>