<%-- 
    Document   : Listar
    Created on : 4/04/2021, 09:24:04 AM
    Author     : jorda
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Proveedor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Proveedor</h1>
        <a href="Controlador_Proveedor?accion=add">Agregar Nuevo</a><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Id del proveedor</th>
                    <th>Nombre del proveedor</th>
                    <th>Correo del proveedor</th>
                    <th>Telefono del proveedor</th>
                    <th>Direccion del proveedor</th>
                    <th>OPCIONES</th>
                </tr>
            </thead>
            <%
                ProveedorDAO dao = new ProveedorDAO();
                List<Proveedor> list = dao.listar();
                Iterator<Proveedor> iter = list.iterator();
                Proveedor tab = null;
                while (iter.hasNext()) {//No cerrar este corchete
                    tab = iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= tab.getIdProveedor()%></td>
                    <td><%= tab.getNom_Prove()%></td>
                    <td><%= tab.getCorreo_Prove()%></td>
                    <td><%= tab.getTelefono_Prove()%></td>
                    <td><%= tab.getDireccion_Prove()%></td>
                    <td>
                        <a href="Controlador_Proveedor?accion=editar&id=<%= tab.getIdProveedor()%>">Editar</a>
                        <a href="Controlador_Proveedor?accion=eliminar&id=<%= tab.getIdProveedor() %>">Eliminar</a>
                    </td>
                </tr>
                 <%}%>
            </tbody>
        </table>

    </body>
</html>
