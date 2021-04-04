package Interfaces;

import Modelo.Producto;
import java.util.List;

public interface ProductoCRUD {

    public List listar();

    public Producto list(int id);

    public boolean add(Producto var);

    public boolean edit(Producto var);

    public boolean eliminar(int id);
}
