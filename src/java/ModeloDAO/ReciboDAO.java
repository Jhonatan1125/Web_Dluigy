/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.ReciboCRUD;
import Modelo.Recibo;
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
public class ReciboDAO implements ReciboCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Recibo ent = new Recibo();

    @Override
    public List listar() {
        ArrayList<Recibo> list = new ArrayList<>();
        String sql = "Select * from Recibo ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Recibo tab = new Recibo();
                tab.setIdRecibo(rs.getInt("IdRecibo"));
                tab.setIdVendedor_Fk(rs.getInt("IdVendedor_Fk"));
                tab.setIdCliente_Fk(rs.getInt("IdCliente_Fk"));
                tab.setFech_Recibo(rs.getDate("Fech_Recibo"));
                tab.setTotal(rs.getInt("Total"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return list;
    }

    @Override
    public Recibo list(int id) {
        String sql = "Select * from Recibo where IdRecibo=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ent.setIdRecibo(rs.getInt("IdRecibo"));
                ent.setIdVendedor_Fk(rs.getInt("IdVendedor_Fk"));
                ent.setIdCliente_Fk(rs.getInt("IdCliente_Fk"));
                ent.setFech_Recibo(rs.getDate("Fech_Recibo"));
                ent.setTotal(rs.getInt("Total"));

            }
        } catch (SQLException e) {

        }
        return ent;
    }

    @Override
    public boolean add(Recibo var) {

        String sql = "insert into Recibo(IdVendedor_Fk,IdCliente_Fk,Fech_Recibo,Total)values('" + var.getIdVendedor_Fk() + "','" + var.getIdCliente_Fk() + "','" + var.getFech_Recibo() + "','" + var.getTotal() + "')";
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
    public boolean edit(Recibo var) {
        String sql = "update Recibo set IdVendedor_Fk='" + var.getIdVendedor_Fk() + "',IdCliente_Fk='" + var.getIdCliente_Fk() + "',Fech_Recibo='" + var.getFech_Recibo() + "',Total='" + var.getTotal() + "'where IdRecibo=" + var.getIdRecibo();
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
        String sql = "delete from Recibo where IdRecibo=" + id;
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
