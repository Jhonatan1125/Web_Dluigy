/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.FidelizacionCRUD;
import Modelo.Fidelizacion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JHsan
 */
public class FidelizacionDAO implements FidelizacionCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Fidelizacion ent = new Fidelizacion();

    @Override
    public List listar() {
        ArrayList<Fidelizacion> list = new ArrayList<>();
        String sql = "Select * from Fidelizacion ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Fidelizacion tab = new Fidelizacion();

                tab.setIdFidelizacion(rs.getInt("IdFidelizacion"));
                tab.setPunt_Total(rs.getInt("Punt_Total"));
                tab.setFech_Caducidad(rs.getDate("Fech_Caducidad"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return list;
    }

    @Override
    public Fidelizacion list(int id) {
        String sql="Select * from Fidelizacion where IdFidelizacion="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
            
            ent.setIdFidelizacion(rs.getInt("IdFidelizacion"));
            ent.setPunt_Total(rs.getInt("Punt_Total"));
            ent.setFech_Caducidad(rs.getDate("Fech_Caducidad"));
            }
        } catch (SQLException e) {
            
        }
        return ent;
    }

    @Override
    public boolean add(Fidelizacion var) {
        
        String sql = "insert into Fidelizacion(Punt_Total,Fech_Caducidad)values('" + var.getPunt_Total() + "','" + var.getFech_Caducidad() + "')";
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
    public boolean edit(Fidelizacion var) {
     String sql="update Fidelizacion set Punt_Total='"+var.getPunt_Total()+"',Fech_Caducidad='"+var.getFech_Caducidad()+"'where IdFidelizacion="+var.getIdFidelizacion();
      try {
          con=cn.getConnection();
          ps=con.prepareStatement(sql);
          ps.executeUpdate();
      } catch (SQLException e) {
          System.out.println("Error: "+e);
      }
      return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from Fidelizacion where IdFidelizacion="+id;
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
