package Interfaces;

import Modelo.Cliente;
import java.util.List;

public interface ClienteCRUD {

    public List listar();

    public Cliente list(int id);

    public boolean add(Cliente var);

    public boolean edit(Cliente var);

    public boolean eliminar(int id);
}
