package Modelo;


public class Cliente {
    int idCliente;
    int IdUsuarios_Fk;
    int IdFidelizacion_Fk;
    int Val_Total_Comp;
    int Num_Comp;

    public Cliente() {
    }

    public Cliente(int IdUsuarios_Fk, int IdFidelizacion_Fk, int Val_Total_Comp, int Num_Comp) {
        this.IdUsuarios_Fk = IdUsuarios_Fk;
        this.IdFidelizacion_Fk = IdFidelizacion_Fk;
        this.Val_Total_Comp = Val_Total_Comp;
        this.Num_Comp = Num_Comp;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdUsuarios_Fk() {
        return IdUsuarios_Fk;
    }

    public void setIdUsuarios_Fk(int IdUsuarios_Fk) {
        this.IdUsuarios_Fk = IdUsuarios_Fk;
    }

    public int getIdFidelizacion_Fk() {
        return IdFidelizacion_Fk;
    }

    public void setIdFidelizacion_Fk(int IdFidelizacion_Fk) {
        this.IdFidelizacion_Fk = IdFidelizacion_Fk;
    }

    public int getVal_Total_Comp() {
        return Val_Total_Comp;
    }

    public void setVal_Total_Comp(int Val_Total_Comp) {
        this.Val_Total_Comp = Val_Total_Comp;
    }

    public int getNum_Comp() {
        return Num_Comp;
    }

    public void setNum_Comp(int Num_Comp) {
        this.Num_Comp = Num_Comp;
    }
    
    
}
