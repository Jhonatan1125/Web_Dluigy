/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


public class Proveedor {
    int IdProveedor;
    String Nom_Prove;
    String Correo_Prove;
    String Telefono_Prove;
    String Direccion_Prove;

    public Proveedor() {
    }

    public Proveedor(String Nom_Prove, String Correo_Prove, String Telefono_Prove, String Direccion_Prove) {
        this.Nom_Prove = Nom_Prove;
        this.Correo_Prove = Correo_Prove;
        this.Telefono_Prove = Telefono_Prove;
        this.Direccion_Prove = Direccion_Prove;
    }

    public int getIdProveedor() {
        return IdProveedor;
    }

    public void setIdProveedor(int IdProveedor) {
        this.IdProveedor = IdProveedor;
    }

    public String getNom_Prove() {
        return Nom_Prove;
    }

    public void setNom_Prove(String Nom_Prove) {
        this.Nom_Prove = Nom_Prove;
    }

    public String getCorreo_Prove() {
        return Correo_Prove;
    }

    public void setCorreo_Prove(String Correo_Prove) {
        this.Correo_Prove = Correo_Prove;
    }

    public String getTelefono_Prove() {
        return Telefono_Prove;
    }

    public void setTelefono_Prove(String Telefono_Prove) {
        this.Telefono_Prove = Telefono_Prove;
    }

    public String getDireccion_Prove() {
        return Direccion_Prove;
    }

    public void setDireccion_Prove(String Direccion_Prove) {
        this.Direccion_Prove = Direccion_Prove;
    }
    
    
}
