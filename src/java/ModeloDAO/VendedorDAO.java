/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.VendedorCRUD;
import Modelo.Vendedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jorda
 */
public class VendedorDAO implements VendedorCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Vendedor ent = new Vendedor();

    @Override
    public List listar() {
        ArrayList<Vendedor> list = new ArrayList<>();
        String sql = "Select * from Vendedor ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Vendedor tab = new Vendedor();

                tab.setIdVendedor(rs.getInt("IdVendedor"));
                tab.setIdUsuarios_Fk(rs.getInt("IdUsuarios_Fk"));
                tab.setNum_Ventas(rs.getInt("Num_Ventas"));
                tab.setComision(rs.getDouble("Comision"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return list;
    }

    @Override
    public Vendedor list(int id) {
        String sql = "Select * from Vendedor where IdVendedor=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ent.setIdVendedor(rs.getInt("IdVendedor"));
                ent.setIdUsuarios_Fk(rs.getInt("IdUsuarios_Fk"));
                ent.setNum_Ventas(rs.getInt("Num_Ventas"));
                ent.setComision(rs.getDouble("Comision"));

            }
        } catch (SQLException e) {

        }
        return ent;
    }

    @Override
    public boolean add(Vendedor var
    ) {

        String sql = "insert into Vendedor(IdUsuarios_Fk,Num_Ventas,Comision)values('" + var.getIdUsuarios_Fk() + "','" + var.getNum_Ventas() + "','" + var.getComision() + "')";
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
    public boolean edit(Vendedor var) {
        String sql = "update Vendedor set IdUsuarios_Fk='" + var.getIdUsuarios_Fk()+ "',Num_Ventas='" + var.getNum_Ventas()+ "',Comision='" + var.getComision()+ "'where IdVendedor=" + var.getIdVendedor();
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
        String sql="delete from Vendedor where IdVendedor="+id;
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
