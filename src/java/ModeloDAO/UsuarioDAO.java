package ModeloDAO;

import Config.Conexion;
import Interfaces.UsuarioCRUD;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class UsuarioDAO implements UsuarioCRUD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario p=new Usuario();
    
    @Override
    public List listar() {
        ArrayList<Usuario>list=new ArrayList<>();
        String sql="Select * from Usuarios ";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Usuario per=new Usuario();
                per.setIDusuario(rs.getInt("IdUsuarios"));
                per.setIdrol_Fk(rs.getInt("IdRol_Fk"));
                per.setP_Nombre(rs.getString("P_Nombre"));
                per.setS_Nombre(rs.getString("S_Nombre"));
                per.setP_Apellido(rs.getString("P_Apellido"));
                per.setS_Apellido(rs.getString("S_Apellido"));
                per.setTelefono(rs.getString("Telefono"));
                per.setFech_Nacimiento(rs.getDate("Fech_Nacimiento"));
                per.setCorreo(rs.getString("Correo"));
                per.setClave_Cuenta(rs.getString("Clave_Cuenta"));
                list.add(per);
            }
        } catch (Exception e) {
            
        }
        return list;
    }

    @Override
    public Usuario list(int id) {
        String sql="Select * from Usuarios where IdUsuarios="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
       
                p.setIDusuario(rs.getInt("IdUsuarios"));
                p.setIdrol_Fk(rs.getInt("IdRol_Fk"));
                p.setP_Nombre(rs.getString("P_Nombre"));
                p.setS_Nombre(rs.getString("S_Nombre"));
                p.setP_Apellido(rs.getString("P_Apellido"));
                p.setS_Apellido(rs.getString("S_Apellido"));
                p.setTelefono(rs.getString("Telefono"));
                p.setFech_Nacimiento(rs.getDate("Fech_Nacimiento"));
                p.setCorreo(rs.getString("Correo"));
                p.setClave_Cuenta(rs.getString("Clave_Cuenta"));
                
            }
        } catch (Exception e) {
            
        }
        return p;
    }

    @Override
    public boolean add(Usuario per) {
        String sql="insert into Usuarios(IdRol_Fk,P_Nombre,S_Nombre,P_Apellido,S_Apellido,Telefono,Fech_Nacimiento,Correo,Clave_Cuenta)values('"+per.getIdrol_Fk()+"','"+per.getP_Nombre()+"','"+per.getS_Nombre()+"','"+per.getP_Apellido()+"','"+per.getS_Apellido()+"','"+per.getTelefono()+"','"+per.getFech_Nacimiento()+"','"+per.getCorreo()+"','"+per.getClave_Cuenta()+"')";
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
    public boolean edit(Usuario per) {
        String sql="update Usuarios set IdRol_Fk='"+per.getIdrol_Fk()+"',P_Nombre='"+per.getP_Nombre()+"',S_Nombre='"+per.getS_Nombre()+"',P_Apellido='"+per.getP_Apellido()+"',S_Apellido='"+per.getS_Apellido()+"',Telefono='"+per.getTelefono()+"',Fech_Nacimiento='"+per.getFech_Nacimiento()+"',Correo='"+per.getCorreo()+"',Clave_Cuenta='"+per.getClave_Cuenta()+"'where IdUsuarios="+per.getIDusuario();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from Usuarios where IdUsuarios="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
