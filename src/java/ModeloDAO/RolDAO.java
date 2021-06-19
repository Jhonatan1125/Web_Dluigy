package ModeloDAO;

import Config.Conexion;
import Interfaces.RolCRUD;
import Modelo.Rol;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RolDAO implements RolCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Rol ent = new Rol();

    @Override
    public List listar() {
        ArrayList<Rol> list = new ArrayList<>();
        String sql = "Select * from Rol";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Rol tab = new Rol();
                tab.setIdRol(rs.getInt("IdRol"));
                tab.setNom_Rol(rs.getString("Nom_Rol"));
                tab.setDescripcion(rs.getString("Descripcion"));
                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error al listar" + e);
        } /*finally {
            cn.cerrar();
        }*/
        return list;
    }

    @Override
    public Rol list(int id) {
        String sql = "Select * from Rol where IdRol=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ent.setIdRol(rs.getInt("IdRol"));
                ent.setNom_Rol(rs.getString("Nom_Rol"));
                ent.setDescripcion(rs.getString("Descripcion"));
            }
        } catch (SQLException e) {
            System.out.println("Error al listar ID" + e);
        } /*finally {
            cn.cerrar();
        }*/
        return ent;

    }

    @Override
    public boolean add(Rol var) {//en el video es per aqui es var
        String sql = "insert into Rol(Nom_Rol,Descripcion)values('" + var.getNom_Rol() + "','" + var.getDescripcion() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al añadir: " + e);
        } /*finally {
            cn.cerrar();
        }*/
        return false;
    }

    @Override
    public boolean edit(Rol var) {
        //en esta parte no se coloca el campoid
        String sql = "update Rol set Nom_Rol='" + var.getNom_Rol() + "',Descripcion='" + var.getDescripcion() + "' where IdRol=" + var.getIdRol();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al actualizar: " + e);
        } /*finally {
            cn.cerrar();
        }*/
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from Rol where IdRol=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al eliminar: " + e.getMessage());
        } /*finally {
            cn.cerrar();
        }*/
        return false;
    }

}
