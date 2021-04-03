/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;


public class Recibo {
    int IdRecibo;
    int IdVendedor_Fk;
    int IdCliente_Fk;
    Date Fech_Recibo;
    int Total;

    public Recibo() {
    }

    public Recibo(int IdVendedor_Fk, int IdCliente_Fk, Date Fech_Recibo, int Total) {
        this.IdVendedor_Fk = IdVendedor_Fk;
        this.IdCliente_Fk = IdCliente_Fk;
        this.Fech_Recibo = Fech_Recibo;
        this.Total = Total;
    }

    public int getIdRecibo() {
        return IdRecibo;
    }

    public void setIdRecibo(int IdRecibo) {
        this.IdRecibo = IdRecibo;
    }

    public int getIdVendedor_Fk() {
        return IdVendedor_Fk;
    }

    public void setIdVendedor_Fk(int IdVendedor_Fk) {
        this.IdVendedor_Fk = IdVendedor_Fk;
    }

    public int getIdCliente_Fk() {
        return IdCliente_Fk;
    }

    public void setIdCliente_Fk(int IdCliente_Fk) {
        this.IdCliente_Fk = IdCliente_Fk;
    }

    public Date getFech_Recibo() {
        return Fech_Recibo;
    }

    public void setFech_Recibo(Date Fech_Recibo) {
        this.Fech_Recibo = Fech_Recibo;
    }

    public int getTotal() {
        return Total;
    }

    public void setTotal(int Total) {
        this.Total = Total;
    }
    
    
    
}
