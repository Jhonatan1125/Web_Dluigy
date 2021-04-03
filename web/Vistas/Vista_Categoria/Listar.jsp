
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
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
            <h1>Listado de Categoria</h1>
            <a href="Controlador_Categoria?accion=add">Agregar Nuevo</a><br>
            <tr>
                <th>Idcategoria</th>
                <th>Nombre de Categoria</th>
                <th>Descripcion</th>
                <th>OPCIONES</th>
            </tr>
        </thead>
        <%
            CategoriaDAO dao = new CategoriaDAO();
            List<Categoria> list = dao.listar();
            Iterator<Categoria> iter = list.iterator();
            Categoria tab = null;
            while (iter.hasNext()) {//No cerrar este corchete
                tab = iter.next();
        %>
        <tbody>
            <tr>
                <td><%= tab.getIdCategoria()%></td>
                <td><%= tab.getNom_Categoria()%></td>
                <td><%= tab.getDescripcion()%></td>
                <td>
                    <a href="Controlador_Categoria?accion=editar&id=<%= tab.getIdCategoria()%>">Editar</a>
                    <a href="Controlador_Categoria?accion=eliminar&id=<%= tab.getIdCategoria()%>">Eliminar</a>
                </td>
            </tr>
            <%}%>
        </tbody>
    </table>


</body>
</html>