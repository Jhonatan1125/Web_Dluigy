/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author JHsan
 */
public class Rol {
   int IdRol;
   String Nom_Rol;
   String Descripcion;

    public Rol() {
    }

    public Rol(int IdRol, String Nom_Rol, String Descripcion) {
        this.IdRol = IdRol;
        this.Nom_Rol = Nom_Rol;
        this.Descripcion = Descripcion;
    }

    public int getIdRol() {
        return IdRol;
    }

    public void setIdRol(int IdRol) {
        this.IdRol = IdRol;
    }

    public String getNom_Rol() {
        return Nom_Rol;
    }

    public void setNom_Rol(String Nom_Rol) {
        this.Nom_Rol = Nom_Rol;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
   
    
}
