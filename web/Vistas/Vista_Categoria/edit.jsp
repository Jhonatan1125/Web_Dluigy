<%@page import="Modelo.Categoria"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Categoria</title>
    </head>
    <body>
        <div>
            <%
                CategoriaDAO dao = new CategoriaDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Categoria u = (Categoria) dao.list(id);
            %>
            <h1>Editar Categoria</h1>
            <form action="Controlador_Categoria">
                <label for="">Id</label>
                <input type="text" name="txtIdCategoria" value="<%= u.getIdCategoria()%>"><br>
                <label for="">Nombre Categoria</label>
                <input type="text" name="txtNom_Categoria" value="<%= u.getNom_Categoria()%>"><br>
                <label for="">Descripcion</label>
                <input type="text" name="txtDescripcion" value="<%= u.getDescripcion()%>"><br>

                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Categoria?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>