/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author JHsan
 */
public class Usuario {
    int IDusuario;
    int Idrol_Fk;
    String P_Nombre;
    String S_Nombre;
    String P_Apellido;
    String S_Apellido;
    String Telefono;
    Date Fech_Nacimiento;
    String Correo;
    String Clave_Cuenta;

    public Usuario() {
    }

    public Usuario(int Idrol_Fk, String P_Nombre, String S_Nombre, String P_Apellido, String S_Apellido, String Telefono, Date Fech_Nacimiento, String Correo, String Clave_Cuenta) {
        this.Idrol_Fk = Idrol_Fk;
        this.P_Nombre = P_Nombre;
        this.S_Nombre = S_Nombre;
        this.P_Apellido = P_Apellido;
        this.S_Apellido = S_Apellido;
        this.Telefono = Telefono;
        this.Fech_Nacimiento = Fech_Nacimiento;
        this.Correo = Correo;
        this.Clave_Cuenta = Clave_Cuenta;
    }

    public int getIDusuario() {
        return IDusuario;
    }

    public void setIDusuario(int IDusuario) {
        this.IDusuario = IDusuario;
    }

    public int getIdrol_Fk() {
        return Idrol_Fk;
    }

    public void setIdrol_Fk(int Idrol_Fk) {
        this.Idrol_Fk = Idrol_Fk;
    }

    public String getP_Nombre() {
        return P_Nombre;
    }

    public void setP_Nombre(String P_Nombre) {
        this.P_Nombre = P_Nombre;
    }

    public String getS_Nombre() {
        return S_Nombre;
    }

    public void setS_Nombre(String S_Nombre) {
        this.S_Nombre = S_Nombre;
    }

    public String getP_Apellido() {
        return P_Apellido;
    }

    public void setP_Apellido(String P_Apellido) {
        this.P_Apellido = P_Apellido;
    }

    public String getS_Apellido() {
        return S_Apellido;
    }

    public void setS_Apellido(String S_Apellido) {
        this.S_Apellido = S_Apellido;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public Date getFech_Nacimiento() {
        return Fech_Nacimiento;
    }

    public void setFech_Nacimiento(Date Fech_Nacimiento) {
        this.Fech_Nacimiento = Fech_Nacimiento;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getClave_Cuenta() {
        return Clave_Cuenta;
    }

    public void setClave_Cuenta(String Clave_Cuenta) {
        this.Clave_Cuenta = Clave_Cuenta;
    }
    
    
     
    
}
