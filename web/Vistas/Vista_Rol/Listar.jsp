<%-- 
    Document   : Listar
    Created on : 1/04/2021, 05:33:43 PM
    Author     : JHsan
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Rol"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>IdRol</th>
                    <th>Nom_Rol</th>
                    <th>Descripcion</th>
                    <th>OPCIONES</th>
                </tr>
            </thead>
            <%
                RolDAO dao = new RolDAO();
                List<Rol> list = dao.listar();
                Iterator<Rol> iter = list.iterator();
                Rol tab = null;
                while (iter.hasNext()) {//No cerrar este corchete
                    tab = iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= tab.getIdRol() %></td>
                    <td><%= tab.getNom_Rol() %></td>
                    <td><%= tab.getDescripcion() %></td>
                    <td>
                        <a>Editar</a>
                        <a>Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
