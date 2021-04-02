# Web_Dluigy

Informacion de login tomada de:
https://www.youtube.com/watch?v=AqiPJCChXwo

Informacion de CRUD tomada de:
https://www.youtube.com/watch?v=D3HER9EGQSI

## PASOS PARA CREAR EL CRUD:

1.Crear la vista de la tabla
- 
- Dentro de Vistas Crear una carpeta con el nombre Vista_Nombretabla(La primera letra de la tabla en mayuscula)

- Dentro de la Carpeta crear Listar.jsp--add.jsp--edit.jsp

- en index agregar este codigo despues de los que ya estan : 
```
  <a href="Controlador_Nombretabla?accion=listar">Listar Nombretabla</a><br>
```
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


```
package Interfaces;
import Modelo.Nombretabla;
import java.util.List;
public interface NombretablaCRUD {
    public List listar();
    public Nombretabla list(int id);
    public boolean add(nombretabla var);
    public boolean eliminar(nombretabla var);
}
```


-  Clic derecho y luego darle en format y cambiar los valores donde se indica :) 

5.Crear en la carpeta ModeloDAO un archivo javaclass(NombretablaDAO primera letra en mayuscula)
-
-  Agregar el metodo implements (public class Nombretabla implements NombretablaCRUD {)
-  Dar clic derecho en la bombilla de error y darle en importar interfaces.NombretablaCRUD
-  Luego dar clic izquierdo en la bombilla de error y darle en implemet all abstract

-  Copiar y Pegar esto debajo de public class:
-  Conexion cn=new Conexion();Connection con;PreparedStatement ps;ResultSet rs;Nombretabla ent=new Nombretabla();
-  Clic derecho y format, darle en la bombilla e importar y por ultimo cambiar Nombretabla
-  Copiar y Pegar esto dentro de listar(No tiene que haber nada dentro de los corchetes de listar)
```
ArrayList<-->Nombretabla>list=new ArrayList<>();
        String sql="Select * from -->Nombretabla ";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                -->Nombretabla tab=new -->Nombretabla();
                
                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error "+e);
        }
        return list;
```
-  Con clic izquierdo en la bombilla de error importar la libreria de ArrayList y SQLException
-  Solo cambiar donde dice Nombretabla

5.1TOMAR LOS DATOS
-
-  Lo que va aqui dentro de listar toca verlo en el video porque ahi se explica mejor

```
@Override
    public List listar() {
        ArrayList<Rol>list=new ArrayList<>();
        String sql="Select * from Rol";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Rol tab=new Rol();
                     /*
                     
                     En el Caso de la tabla Rol queda asi
                     
                     */
                tab.setIdRol(rs.getInt("IdRol"));
                tab.setNom_Rol(rs.getString("Nom_Rol"));
                tab.setDescripcion(rs.getString("Descripcion"));
                     
                     
                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error "+e);
        }
        return list;
    }
```

6.Dentro de la carpeta Controlador se crea un archivo Servlet y se selecciona el cuadro de add information(Controlador_Nombretabla la primera en mayus)
-
-  debajo del public class declarar estas variables  y cambiar donde dice Nombretabla 
```
    String listar = "Vistas/Vista_Nombretabla/Listar.jsp";
    String add = "Vistas/Vista_Nombretabla/add.jsp";
    String edit = "Vistas/Vista_Nombretabla/edit.jsp";
    Nombretabla u = new Nombretabla();
    NombretablaDAO dao = new NombretablaDAO();
    
    /* Variables de la tabla Usuario 
    int id;
    int IdRol;
    String P_nombre;
    String S_nombre;
    String P_apellido;
    String S_apellido;
    String telefono;
    Date nacimiento;
    String Correo;
    String Clave;
    */
```

-   Hay que darle en el signo de mas (+) en la linea 47 para ver lo de DoGet porque el man del video no especifica
-   El doGet se veria asi y no hay que hacer ningun cambio por ahora
```
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }
```
    
7.Vamos a listar.jsp y se coloca lo siguiente
-

```
<%
 NombretablaDAO dao = new NombretablaDAO();
 List<Nombretabla> list = dao.listar();
 Iterator<Nombretabla> iter = list.iterator();
 Nombretabla tab = null;
 while (iter.hasNext()) {//No cerrar este corchete
 tab = iter.next();
%>
```
-  Se cambia Nombretabla y se importa lo que pida la bombilla de error
-  y cerrar el corchete despues del ultimo tr:  <%}%>
-  Dentro de los td se coloca codigo java
```
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
```
