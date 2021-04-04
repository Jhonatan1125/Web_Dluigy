/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.InventarioCRUD;
import Modelo.Inventario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InventarioDAO implements InventarioCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Inventario ent = new Inventario();

    @Override
    public List listar() {
        ArrayList<Inventario> list = new ArrayList<>();
        String sql = "Select * from Inventario ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Inventario tab = new Inventario();

                tab.setIdInventario(rs.getInt("IdInventario"));
                tab.setCantidad(rs.getInt("Cantidad"));
                tab.setFech_Entrada(rs.getDate("Fech_Entrada"));
                tab.setCant_Entrada(rs.getInt("Cant_Entrada"));
                tab.setCant_Salida(rs.getInt("Cant_Salida"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return list;
    }

    @Override
    public Inventario list(int id) {
        String sql = "Select * from Inventario where IdInventario=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                ent.setIdInventario(rs.getInt("IdInventario"));
                ent.setCantidad(rs.getInt("Cantidad"));
                ent.setFech_Entrada(rs.getDate("Fech_Entrada"));
                ent.setCant_Entrada(rs.getInt("Cant_Entrada"));
                ent.setCant_Salida(rs.getInt("Cant_Salida"));

            }
        } catch (SQLException e) {

        }
        return ent;
    }

    @Override
    public boolean add(Inventario var) {
        String sql = "insert into Inventario(Cantidad,Fech_Entrada,Cant_Entrada,Cant_Salida)values('" + var.getCantidad() + "','" + var.getFech_Entrada() + "','" + var.getCant_Entrada() + "','" + var.getCant_Salida() + "')";
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
    public boolean edit(Inventario var) {

        String sql = "update Inventario set Cantidad='" + var.getCantidad() + "',Fech_Entrada='" + var.getFech_Entrada() + "',Cant_Entrada='" + var.getCant_Entrada() + "',Cant_Salida='" + var.getCant_Salida() + "'where IdInventario=" + var.getIdInventario();
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
        String sql="delete from Inventario where IdInventario="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return false;
    }

}