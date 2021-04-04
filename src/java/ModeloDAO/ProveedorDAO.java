/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.ProveedorCRUD;
import Modelo.Proveedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO implements ProveedorCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Proveedor ent = new Proveedor();

    @Override
    public List listar() {
        ArrayList<Proveedor> list = new ArrayList<>();
        String sql = "Select * from Proveedor";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proveedor tab = new Proveedor();

                tab.setIdProveedor(rs.getInt("IdProveedor"));
                tab.setNom_Prove(rs.getString("Nom_Prove"));
                tab.setCorreo_Prove(rs.getString("Correo_Prove"));
                tab.setTelefono_Prove(rs.getString("Telefono_Prove"));
                tab.setDireccion_Prove(rs.getString("Direccion_Prove"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return list;
    }

    @Override
    public Proveedor list(int id) {
         String sql="Select * from Proveedor where IdProveedor="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
             
                ent.setIdProveedor(rs.getInt("IdProveedor"));
                ent.setNom_Prove(rs.getString("Nom_Prove"));
                ent.setCorreo_Prove(rs.getString("Correo_Prove"));
                ent.setTelefono_Prove(rs.getString("Telefono_Prove"));
                ent.setDireccion_Prove(rs.getString("Direccion_Prove"));
            }
        } catch (SQLException e) {
            
        }
        return ent;
    }

    @Override
    public boolean add(Proveedor var) {

        String sql = "insert into Proveedor(Nom_Prove,Correo_Prove,Telefono_Prove,Direccion_Prove)values('" + var.getNom_Prove()+ "','" + var.getCorreo_Prove()+ "','" + var.getTelefono_Prove()+ "', '" + var.getDireccion_Prove()+"')";
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
    public boolean edit(Proveedor var) {
     String sql="update Proveedor set Nom_Prove='"+var.getNom_Prove()+"',Correo_Prove='"+var.getCorreo_Prove()+"',Telefono_Prove='"+var.getTelefono_Prove()+"',Direccion_Prove='"+var.getDireccion_Prove()+"'where IdProveedor="+var.getIdProveedor();
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
        String sql="delete from Proveedor where IdProveedor="+id;
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
