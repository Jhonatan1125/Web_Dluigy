<%-- 
    Document   : Listar
    Created on : 25/03/2021, 12:51:49 PM
    Author     : JHsan
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Usuarios</h1>
            <a href="Controlador_Usuario?accion=add">Agregar Nuevo</a><br>
            <table border="1">
                <thead>
                    <tr>
                        <th>IDUsuarios</th>
                        <th>IdRol_Fk</th>
                        <th>P_Nombre</th>
                        <th>S_Nombre</th>
                        <th>P_Apellido</th>
                        <th>S_Apellido</th>
                        <th>Telefono</th>
                        <th>Fech_Nacimiento</th>
                        <th>Correo</th>
                        <th>Clave_Cuenta</th>
                        <th>OPCIONES</th>
                    </tr>
                </thead>
                <%
                    UsuarioDAO dao = new UsuarioDAO();
                    List<Usuario> list = dao.listar();
                    Iterator<Usuario> iter = list.iterator();
                    Usuario per = null;
                    while (iter.hasNext()) {
                        per = iter.next();

                %>
                <tbody>
                    <tr>
                        <td><%= per.getIDusuario() %></td>
                        <td><%= per.getIdrol_Fk() %></td>
                        <td><%= per.getP_Nombre() %></td>
                        <td><%= per.getS_Nombre() %></td>
                        <td><%= per.getP_Apellido() %></td>
                        <td><%= per.getS_Apellido() %></td>
                        <td><%= per.getTelefono() %></td>
                        <td><%= per.getFech_Nacimiento() %></td>
                        <td><%= per.getCorreo() %></td>
                        <td><%= per.getClave_Cuenta() %></td>
                        <td>
                            <a href="Controlador_Usuario?accion=editar&id=<%= per.getIDusuario() %>">Editar</a>
                            <a href="Controlador_Usuario?accion=eliminar&id=<%= per.getIDusuario() %>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
