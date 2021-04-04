package Interfaces;

import Modelo.Inventario;
import java.util.List;

public interface InventarioCRUD {

    public List listar();

    public Inventario list(int id);

    public boolean add(Inventario var);

    public boolean edit(Inventario var);

    public boolean eliminar(int id);
}
