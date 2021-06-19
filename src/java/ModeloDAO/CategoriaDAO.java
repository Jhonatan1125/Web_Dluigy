package ModeloDAO;

import Config.Conexion;
import Interfaces.CategoriaCRUD;
import Modelo.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoriaDAO implements CategoriaCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Categoria ent = new Categoria();

    @Override
    public List listar() {
        ArrayList<Categoria> list = new ArrayList<>();
        String sql = "Select * from Categoria";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categoria tab = new Categoria();

                tab.setIdCategoria(rs.getInt("IdCategoria"));
                tab.setNom_Categoria(rs.getString("Nom_Categoria"));
                tab.setDescripcion(rs.getString("Descripcion"));

                list.add(tab);
            }
        } catch (SQLException e) {
            System.out.println("Error " + e.getMessage());
        }
        return list;
    }

    @Override
    public Categoria list(int id) {
        String sql="Select * from Categoria where IdCategoria="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                
            ent.setIdCategoria(rs.getInt("IdCategoria"));
            ent.setNom_Categoria(rs.getString("Nom_Categoria"));
            ent.setDescripcion(rs.getString("Descripcion"));
            }
        } catch (SQLException e) {
            
        }
        return ent;
    }

    @Override
    public boolean add(Categoria var) {
       
        String sql = "insert into Categoria(Nom_Categoria,Descripcion)values('" + var.getNom_Categoria()+ "','" + var.getDescripcion()+ "')";
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
    public boolean edit(Categoria var) {
     String sql="update Categoria set Nom_Categoria='"+var.getNom_Categoria()+"',Descripcion='"+var.getDescripcion()+"'where IdCategoria="+var.getIdCategoria();
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
       String sql="delete from Categoria where IdCategoria="+id;
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
