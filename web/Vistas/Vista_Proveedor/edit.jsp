<%@page import="Modelo.Proveedor"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Editar Proveedor</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                 <%
                    ProveedorDAO dao = new ProveedorDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Proveedor u = (Proveedor) dao.list(id);
                %>
            <h1>Editar Proveedor</h1>
            <form action="Controlador_Proveedor">
                <label for="">Id proveedor</label>
                <input class="form-control" type="text" name="txtIdProveedor" value="<%= u.getIdProveedor() %>"><br>
                <label for="">Nombre del proveedor</label>
                <input class="form-control" type="text" name="txtNom_Prove" value="<%= u.getNom_Prove() %>"><br>
                <label for="">Correo del proveedor</label>
                <input class="form-control" type="text" name="txtCorreo_Prove" value="<%= u.getCorreo_Prove()  %>"><br>
                <label for="">Telefono del proveedor</label>
                <input class="form-control" type="text" name="txtTelefono_Prove" value="<%= u.getTelefono_Prove()  %>"><br>
                <label for="">Direccion del proveedor</label>
                <input class="form-control" type="text" name="txtDireccion_Prove" value="<%= u.getDireccion_Prove() %>"><br>

                <input class="btn btn-primary"  type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Proveedor?accion=listar">Regresar</a>
            </form>
            </div>
           
        </div>
    </body>
</html>