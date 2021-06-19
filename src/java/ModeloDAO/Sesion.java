/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JHsan
 */
public class Sesion {

    private Connection conexion;
    private PreparedStatement sentenciaPreparada;
    private ResultSet resultado;

    public boolean registrarUsuario(String P_Nombre, String S_Nombre, String P_Apellido, String S_Apellido, String Telefono, Date Fech_Nacimiento, String Correo, String Clave_Cuenta) {
        boolean registro = false;

        try {
            Conexion cn = new Conexion();
            conexion = cn.getConnection();
            String consulta = "insert into usuarios (P_Nombre,S_Nombre,P_Apellido,S_Apellido,Telefono,Fech_Nacimiento,Correo,Clave_Cuenta)values(?,?,?,?,?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, P_Nombre);
            sentenciaPreparada.setString(2, S_Nombre);
            sentenciaPreparada.setString(3, P_Apellido);
            sentenciaPreparada.setString(4, S_Apellido);
            sentenciaPreparada.setString(5, Telefono);
            sentenciaPreparada.setDate(6, Fech_Nacimiento);
            sentenciaPreparada.setString(7, Correo);
            sentenciaPreparada.setString(8, Clave_Cuenta);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();
            if (resultadoInsercion != 0) {
                registro = true;
                System.out.println("Se realizo correctamente el registro");
            } else {
                registro = false;
                System.out.println("No se pudo realizar el registro");
            }
            /*conexion.close();*/
        } catch (SQLException e) {
            System.out.println("Error: " + e);

        } /*finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }*/

        System.out.println("Valor del registro: " + registro);
        return registro;
    }

    public boolean buscarUsuarioRepetidoBD(String curp) {
        boolean usuarioRepetido = false;
        try {
            Conexion cn = new Conexion();
            conexion = cn.getConnection();
            String consulta = "select Correo from usuarios where Correo=?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, curp);
            resultado = sentenciaPreparada.executeQuery();

            if (resultado.next()) {
                usuarioRepetido = true;//Usuario ya esta registrado
            } else {
                usuarioRepetido = false;//Usuario no registrado
            }

            /*conexion.close();*/

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } /*finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }*/
        System.out.println("El valor del usuario repetido es " + usuarioRepetido);

        return usuarioRepetido;
    }

    public String buscarUsuarioInicioSesion(String usuario, String Clave) {
        String iniciarSesion = "";
        try {
            Conexion cn = new Conexion();
            conexion = cn.getConnection();
            String consulta = "select Nom_Rol from usuarios inner join rol on IdRol=IdRol_Fk where Correo=? AND Clave_Cuenta=?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            sentenciaPreparada.setString(2, Clave);
            resultado = sentenciaPreparada.executeQuery();
            while (resultado.next()) {                
                iniciarSesion = resultado.getString("Nom_Rol");
            }
            /*conexion.close();*/
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }/* finally{
            try {
                conexion.close();
            } catch (SQLException e) {
            System.out.println("Error: "+e);
            }
        }*/
        
        System.out.println("El valor de sesion es: "+iniciarSesion);
        return iniciarSesion;
    }
}
