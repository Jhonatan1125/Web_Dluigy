<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Proveedor</title>
    </head>
    <body>
       
        <div class="container">  
            <div class="col-lg-8"> 
                <h1>Añadir Nombretabla</h1>
            <form action="Controlador_Proveedor">

                <label for="">Nombre del proveedor</label>
                <input class="form-control" type="text" name="txtNom_Prove"><br>
                <label for="">Correo del proveedor</label>
                <input class="form-control" type="text" name="txtCorreo_Prove"><br>
                <label for="">Telefono del proveedor</label>
                <input class="form-control" type="text" name="txtTelefono_Prove"><br>
                <label for="">Direccion del proveedor</label>
                <input class="form-control" type="text" name="txtDireccion_Prove"><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
            </form>
            </div>
            
        </div>
    </body>
</html>