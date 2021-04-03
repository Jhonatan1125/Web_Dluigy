package ModeloDAO;

import Config.Conexion;
import Interfaces.ClienteCRUD;
import Modelo.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO implements ClienteCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cliente ent = new Cliente();

    @Override
    public List listar() {
        ArrayList<Cliente> list = new ArrayList<>();
        String sql = "Select * from Cliente ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente tab = new Cliente();

                tab.setIdCliente(rs.getInt("IdCliente"));
                tab.setIdUsuarios_Fk(rs.getInt("IdUsuarios_Fk"));
                tab.setIdFidelizacion_Fk(rs.getInt("IdFidelizacion_Fk"));
                tab.setVal_Total_Comp(rs.getInt("Val_Total_Comp"));
                tab.setNum_Comp(rs.getInt("Num_Comp"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return list;
    }

    @Override
    public Cliente list(int id) {
        String sql = "Select * from Cliente where idCliente=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ent.setIdCliente(rs.getInt("idCliente"));
                ent.setIdUsuarios_Fk(rs.getInt("IdUsuarios_Fk"));
                ent.setIdFidelizacion_Fk(rs.getInt("IdFidelizacion_Fk"));
                ent.setVal_Total_Comp(rs.getInt("Val_Total_Comp"));
                ent.setNum_Comp(rs.getInt("Num_Comp"));

            }
        } catch (SQLException e) {

        }
        return ent;
    }

    @Override
    public boolean add(Cliente var) {
        String sql = "insert into Cliente(IdUsuarios_Fk,IdFidelizacion_Fk,Val_Total_Comp,Num_Comp)values('" + var.getIdUsuarios_Fk() + "','" + var.getIdFidelizacion_Fk() + "','" + var.getVal_Total_Comp() + "','" + var.getNum_Comp() + "')";
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
    public boolean edit(Cliente var) {
        //en esta parte no se actualiza el campoid
        String sql = "update Cliente set IdUsuarios_Fk='" + var.getIdUsuarios_Fk() + "',IdFidelizacion_Fk='" + var.getIdFidelizacion_Fk() + "',Val_Total_Comp='" + var.getVal_Total_Comp() + "',Num_Comp='" + var.getNum_Comp() + "' where idCliente=" + var.getIdCliente();
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
        String sql="delete from Cliente where idCliente="+id;
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
