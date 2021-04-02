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
        ArrayList<Rol>list=new ArrayList<>();
        String sql="Select * from Rol";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Rol tab=new Rol();
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

    @Override
    public Rol list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Rol var) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Rol var) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
