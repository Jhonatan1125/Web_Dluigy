package ModeloDAO;

import Config.Conexion;
import Interfaces.ProductoCRUD;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO implements ProductoCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto ent = new Producto();

    @Override
    public List listar() {
        ArrayList<Producto> list = new ArrayList<>();
        String sql = "Select * from Producto ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto tab = new Producto();

                tab.setIdProducto(rs.getInt("IdProducto"));
                tab.setIdInventario_Fk(rs.getInt("IdInventario_Fk"));
                tab.setIdCategoria_Fk(rs.getInt("IdCategoria_Fk"));
                tab.setNom_Prod(rs.getString("Nom_Prod"));
                tab.setColor_Prod(rs.getString("Color_Prod"));
                tab.setTalla_Prod(rs.getString("Talla_Prod"));
                tab.setMaterial_Prod(rs.getString("Material_Prod"));
                tab.setPrecio_Unitario_Venta(rs.getInt("Precio_Unitario_Venta"));
                tab.setPrecio_Unitario_Compra(rs.getInt("Precio_Unitario_Compra"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return list;
    }

    @Override
    public Producto list(int id) {
        String sql = "Select * from Producto where IdProducto=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                ent.setIdProducto(rs.getInt("IdProducto"));
                ent.setIdInventario_Fk(rs.getInt("IdInventario_Fk"));
                ent.setIdCategoria_Fk(rs.getInt("IdCategoria_Fk"));
                ent.setNom_Prod(rs.getString("Nom_Prod"));
                ent.setColor_Prod(rs.getString("Color_Prod"));
                ent.setTalla_Prod(rs.getString("Talla_Prod"));
                ent.setMaterial_Prod(rs.getString("Material_Prod"));
                ent.setPrecio_Unitario_Venta(rs.getInt("Precio_Unitario_Venta"));
                ent.setPrecio_Unitario_Compra(rs.getInt("Precio_Unitario_Compra"));

            }
        } catch (SQLException e) {

        }
        return ent;
    }

    @Override
    public boolean add(Producto var) {

        String sql = "insert into Producto(IdInventario_Fk,IdCategoria_Fk,Nom_Prod,Color_Prod,Talla_Prod,Material_Prod,Precio_Unitario_Venta,Precio_Unitario_Compra)values('" + var.getIdInventario_Fk() + "','" + var.getIdCategoria_Fk() + "','" + var.getNom_Prod() + "','" + var.getColor_Prod() + "','" + var.getTalla_Prod() + "','" + var.getMaterial_Prod() + "','" + var.getPrecio_Unitario_Venta() + "','" + var.getPrecio_Unitario_Compra() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return false;
    }

    @Override
    public boolean edit(Producto var) {

        String sql = "update Producto set IdInventario_Fk='" + var.getIdInventario_Fk() + "',IdCategoria_Fk='" + var.getIdCategoria_Fk() + "',Nom_Prod='" + var.getNom_Prod() + "',Color_Prod='" + var.getColor_Prod() + "',Talla_Prod='" + var.getTalla_Prod() + "',Material_Prod='" + var.getMaterial_Prod() + "',Precio_Unitario_Venta='" + var.getPrecio_Unitario_Venta() + "',Precio_Unitario_Compra='" + var.getPrecio_Unitario_Compra() + "'where IdProducto=" + var.getIdProducto();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from Producto where IdProducto=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return false;
    }

}
