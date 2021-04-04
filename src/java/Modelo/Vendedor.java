/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

public class Vendedor {
    
    int IdVendedor;
    int IdUsuarios_Fk;
    int Num_Ventas;
    Double Comision;

    public Vendedor() {
    }

    public Vendedor(int IdUsuarios_Fk, int Num_Ventas, Double Comision) {
        this.IdUsuarios_Fk = IdUsuarios_Fk;
        this.Num_Ventas = Num_Ventas;
        this.Comision = Comision;
    }

    public int getIdVendedor() {
        return IdVendedor;
    }

    public void setIdVendedor(int IdVendedor) {
        this.IdVendedor = IdVendedor;
    }

    public int getIdUsuarios_Fk() {
        return IdUsuarios_Fk;
    }

    public void setIdUsuarios_Fk(int IdUsuarios_Fk) {
        this.IdUsuarios_Fk = IdUsuarios_Fk;
    }

    public int getNum_Ventas() {
        return Num_Ventas;
    }

    public void setNum_Ventas(int Num_Ventas) {
        this.Num_Ventas = Num_Ventas;
    }

    public Double getComision() {
        return Comision;
    }

    public void setComision(Double Comision) {
        this.Comision = Comision;
    }
}
