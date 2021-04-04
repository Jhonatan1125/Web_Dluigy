/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;


public class Inventario {
    
    int IdInventario;
    int Cantidad;
    Date Fech_Entrada;
    int Cant_Entrada;
    int Cant_Salida;

    public Inventario() {
    }

    public Inventario(int Cantidad, Date Fech_Entrada, int Cant_Entrada, int Cant_Salida) {
        this.Cantidad = Cantidad;
        this.Fech_Entrada = Fech_Entrada;
        this.Cant_Entrada = Cant_Entrada;
        this.Cant_Salida = Cant_Salida;
    }

    public int getIdInventario() {
        return IdInventario;
    }

    public void setIdInventario(int IdInventario) {
        this.IdInventario = IdInventario;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public Date getFech_Entrada() {
        return Fech_Entrada;
    }

    public void setFech_Entrada(Date Fech_Entrada) {
        this.Fech_Entrada = Fech_Entrada;
    }

    public int getCant_Entrada() {
        return Cant_Entrada;
    }

    public void setCant_Entrada(int Cant_Entrada) {
        this.Cant_Entrada = Cant_Entrada;
    }

    public int getCant_Salida() {
        return Cant_Salida;
    }

    public void setCant_Salida(int Cant_Salida) {
        this.Cant_Salida = Cant_Salida;
    }
    
    
    
}

