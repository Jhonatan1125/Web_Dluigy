# Web_Dluigy

Informacion de login tomada de:
https://www.youtube.com/watch?v=AqiPJCChXwo

Informacion de CRUD tomada de:
https://www.youtube.com/watch?v=D3HER9EGQSI

#PASOS PARA CREAR EL CRUD:

1.Crear la vista de la tabla
- 
- Dentro de Vistas Crear una carpeta con el nombre Vista_Nombretabla(La primera letra de la tabla en mayuscula)

- Dentro de la Carpeta crear Listar.jsp--add.jsp--edit.jsp
  
2.Crear la tabla dentro de Listar.jsp
  -
-  Con "Ctrl+espacio" crear table de Rows (1) y Columns (Nº campos de la tabla + 1 para opciones), luego colocar en "th" los titulos de cada campo

3.Crear en la carpeta modelo un archivo javaclass(Nombretabla.java primera letra en Mayus)
-
-  Declarar cada tipo de variable (int,String,Date) y de nombre colocar el mismo que el de la tabla
-  Con "Alt+insert o clic derecho" seleccionar constructor primero darle generar sin seleccionar ningun campo y luego repetir el proceso pero ahora seleccionando todo menos la llave primaria 
-  Con "Alt+insert" seleccionar getter y setter y seleccionar todos los campos y luego generar

4.Crear en la carpeta interfaces un archivo java-interface(NombretablaCRUD primera letra en mayuscula)
-
- Copiar y Pegar esto:



package Interfaces;
import Modelo.Nombretabla;
import java.util.List;
public interface NombretablaCRUD {
    public List listar();
    public Nombretabla list(int id);
    public boolean add(nombretabla var);
    public boolean eliminar(nombretabla var);
}



-  Clic derecho y luego darle en format y cambiar los valores donde se indica :) 

5.Crear en la carpeta ModeloDAO un archivo javaclass(NombretablaDAO primera letra en mayuscula)
-
-  Agregar el metodo implements (public class Nombretabla implements NombretablaCRUD {)
-  Dar clic derecho en la bombilla de error y darle en importar interfaces.Nombretabla
-  Luego dar clic izquierdo en la bombilla de error y darle en implemet all abstract

-  Copiar y Pegar esto debajo de public class:
-  Conexion cn=new Conexion();Connection con;PreparedStatement ps;ResultSet rs;Nombretabla ent=new Nombretabla();
-  Clic derecho y format, darle en la bombilla e importar y por ultimo cambiar Nombretabla
-  Copiar y Pegar esto dentro de listar(No tiene que haber nada dentro de los corchetes)



ArrayList<Nombretabla>list=new ArrayList<>();
        String sql="Select * from Nombretabla ";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Nombretabla tab=new Nombretabla();
                
                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error "+e);
        }
        return list;
