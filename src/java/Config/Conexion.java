package Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    //con=DriverManager.getConnection("jdbc:mysql://node69020-dluigy.w1-us.cloudjiffy.net:3306/dluigy_bdd_n","root","RFQgdq27509"); 
    static String driver = "com.mysql.jdbc.Driver";
    //static String url = "jdbc:mysql://localhost:3306/dluigy_bdd_n";
    static String url = "jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_989e137d7e6f7cb";
    static String usuario = "be40ee77ff4c60";
    static String password = "e6a173a0";

    protected Connection con = null;
    
    public Conexion(){
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, usuario, password);
            if (con != null) {
                System.out.println("Conexion correcta " + con);
            }

        } catch (SQLException ex) {
            System.out.println("Error de conexion " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            System.out.println("Falta Driver de conexion" + ex.getMessage());
        }
    }
    public Connection getConnection(){
        return con;
    }
    
    public void cerrar(){
        try {
            con.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar la conexion " + ex);
        }
    }
}
