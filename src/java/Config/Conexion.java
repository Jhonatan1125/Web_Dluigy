
package Config;

import java.sql.*;

public class Conexion {
    Connection con;
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //con=DriverManager.getConnection("jdbc:mysql://node66531-dluigy.w1-us.cloudjiffy.net:3306/dluigy_bdd_n","root","CMMsva88412");
            //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dluigy_bdd_n","root","");      
            con=DriverManager.getConnection("jdbc:mysql://node68377-dluigyrop.w1-us.cloudjiffy.net:3306/dluigy_bdd_n","root","0xeZyz8r70");    
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
    }
    public Connection getConnection(){
        return con;
    }
}
