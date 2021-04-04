<%@page import="Modelo.Proveedor"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Proveedor</title>
    </head>
    <body>
        <div>
            <%
                    ProveedorDAO dao = new ProveedorDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Proveedor u = (Proveedor) dao.list(id);
                %>
            <h1>Editar Proveedor</h1>
            <form action="Controlador_Proveedor">
                <label for="">Id proveedor</label>
                <input type="text" name="txtIdProveedor" value="<%= u.getIdProveedor() %>"><br>
                <label for="">Nombre del proveedor</label>
                <input type="text" name="txtNom_Prove" value="<%= u.getNom_Prove() %>"><br>
                <label for="">Correo del proveedor</label>
                <input type="text" name="txtCorreo_Prove" value="<%= u.getCorreo_Prove()  %>"><br>
                <label for="">Telefono del proveedor</label>
                <input type="text" name="txtTelefono_Prove" value="<%= u.getTelefono_Prove()  %>"><br>
                <label for="">Direccion del proveedor</label>
                <input type="text" name="txtDireccion_Prove" value="<%= u.getDireccion_Prove() %>"><br>

                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Proveedor?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>