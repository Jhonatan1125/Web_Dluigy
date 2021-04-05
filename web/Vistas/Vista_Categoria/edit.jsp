<%@page import="Modelo.Categoria"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../Contenido/css/bootstrap.css" rel="stylesheet" type="text/css"/>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        
        <title>Editar Categoria</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                CategoriaDAO dao = new CategoriaDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Categoria u = (Categoria) dao.list(id);
            %>
            <h1>Editar Categoria</h1>
            <form action="Controlador_Categoria">
                <label for="">Id</label>
                <input class="form-control" type="text" name="txtIdCategoria" value="<%= u.getIdCategoria()%>"><br>
                <label for="">Nombre Categoria</label>
                <input class="form-control"  type="text" name="txtNom_Categoria" value="<%= u.getNom_Categoria()%>"><br>
                <label for="">Descripcion</label>
                <input class="form-control"  type="text" name="txtDescripcion" value="<%= u.getDescripcion()%>"><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Categoria?accion=listar">Regresar</a>
            </form> 
            </div>
           
        </div>
    </body>
</html>