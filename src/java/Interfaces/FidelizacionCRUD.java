package Interfaces;

import Modelo.Fidelizacion;
import java.util.List;

public interface FidelizacionCRUD {

    public List listar();

    public Fidelizacion list(int id);

    public boolean add(Fidelizacion var);

    public boolean edit(Fidelizacion var);

    public boolean eliminar(int id);
}
