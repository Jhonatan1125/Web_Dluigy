<%-- 
    Document   : Listar
    Created on : 2/04/2021, 06:46:51 PM
    Author     : JHsan
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Fidelizacion"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.FidelizacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Fidelizacion</h1>
        <a href="Controlador_Fidelizacion?accion=add">Agregar Nuevo</a><br>
        <table border="1">
            <thead>
                <tr>
                    <th>IdFidelizacion</th>
                    <th>Puntaje Total</th>
                    <th>Fecha de Caducidad</th>
                    <th>OPCIONES</th>
                </tr>
            </thead>
            <%
                FidelizacionDAO dao = new FidelizacionDAO();
                List<Fidelizacion> list = dao.listar();
                Iterator<Fidelizacion> iter = list.iterator();
                Fidelizacion tab = null;
                while (iter.hasNext()) {//No cerrar este corchete
                    tab = iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= tab.getIdFidelizacion()%></td>
                    <td><%= tab.getPunt_Total()%></td>
                    <td><%= tab.getFech_Caducidad()%></td>
                    <td>
                        <a href="Controlador_Fidelizacion?accion=editar&id=<%= tab.getIdFidelizacion()%>">Editar</a>
                        <a href="Controlador_Fidelizacion?accion=eliminar&id=<%= tab.getIdFidelizacion()%>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
