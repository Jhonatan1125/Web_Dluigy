<%@page import="Modelo.Fidelizacion"%>
<%@page import="ModeloDAO.FidelizacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">        
        <title>Editar Fidelizacion</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    FidelizacionDAO dao = new FidelizacionDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Fidelizacion u = (Fidelizacion) dao.list(id);
                %>
            <h1>Editar Fidelizacion</h1>
            <form action="Controlador_Fidelizacion">
                <label for="">Id</label>
                <input class="form-control" type="text" name="txtIdFidelizacion" value="<%= u.getIdFidelizacion() %>"><br>
                <label for="">Puntaje Total</label>
                <input class="form-control" type="text" name="txtPunt_Total" value="<%= u.getPunt_Total()  %>"><br>
                <label for="">Fecha de Caducidad</label>
                <input class="form-control" type="text" name="txtFech_Caducidad" value="<%= u.getFech_Caducidad() %>"><br>
                

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Fidelizacion?accion=listar">Regresar</a>
            </form>
            </div>
            
        </div>
    </body>
</html>