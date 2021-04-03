package Modelo;

import java.sql.Date;


public class Fidelizacion {
    int IdFidelizacion;
    int Punt_Total;
    Date Fech_Caducidad;

    public Fidelizacion() {
    }

    public Fidelizacion(int Punt_Total, Date Fech_Caducidad) {
        this.Punt_Total = Punt_Total;
        this.Fech_Caducidad = Fech_Caducidad;
    }

    public int getIdFidelizacion() {
        return IdFidelizacion;
    }

    public void setIdFidelizacion(int IdFidelizacion) {
        this.IdFidelizacion = IdFidelizacion;
    }

    public int getPunt_Total() {
        return Punt_Total;
    }

    public void setPunt_Total(int Punt_Total) {
        this.Punt_Total = Punt_Total;
    }

    public Date getFech_Caducidad() {
        return Fech_Caducidad;
    }

    public void setFech_Caducidad(Date Fech_Caducidad) {
        this.Fech_Caducidad = Fech_Caducidad;
    }
    
    
}
