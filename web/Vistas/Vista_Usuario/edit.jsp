<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">       
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                 <%
                    UsuarioDAO dao = new UsuarioDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idper"));
                    Usuario u = (Usuario) dao.list(id);
                %>
            <h1>Editar Usuario</h1>
            <form action="Controlador_Usuario">
                <label for="ID">ID Usuario</label>
                <input class="form-control" type="text" name="ID" value="<%= u.getIDusuario() %>"><br>
                <label for="Rol">Rol del Usuario</label>
                <input class="form-control" type="text" name="Rol" value="<%= u.getIdrol_Fk() %>"><br>
                <label for="P_nombre">Primer Nombre</label>
                <input class="form-control" type="text" name="P_nombre" value="<%= u.getP_Nombre() %>"><br>
                <label for="S_nombre">Segundo Nombre</label>
                <input class="form-control" type="text" name="S_nombre" value="<%= u.getS_Nombre() %>"><br>
                <label for="P_apellido">Primer Apellido</label>
                <input class="form-control" type="text" name="P_apellido" value="<%= u.getP_Apellido() %>"><br>
                <label for="S_apellido">Segundo Apellido</label>
                <input class="form-control" type="text" name="S_apellido" value="<%= u.getS_Apellido() %>"><br>
                <label for="Telefono">Telefono</label>
                <input class="form-control" type="text" name="Telefono" value="<%= u.getTelefono() %>"><br>
                <label for="Nacimiento">Fecha de Nacimiento</label>
                <input class="form-control" type="text" name="Nacimiento" value="<%= u.getFech_Nacimiento() %>"><br>
                <label for="Correo">Correo Electronico</label>
                <input class="form-control" type="text" name="Correo" value="<%= u.getCorreo() %>"><br>
                <label for="Clave">Contraseña</label>
                <input class="form-control" type="text" name="Clave" value="<%= u.getClave_Cuenta() %>"><br><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Usuario?accion=listar">Regresar</a>
            </form>
            </div>
           
        </div>
    </body>
</html>
