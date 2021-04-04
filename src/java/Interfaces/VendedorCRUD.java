package Interfaces;

import Modelo.Vendedor;
import java.util.List;

public interface VendedorCRUD {

    public List listar();

    public Vendedor list(int id);

    public boolean add(Vendedor var);

    public boolean edit(Vendedor var);

    public boolean eliminar(int id);
}
