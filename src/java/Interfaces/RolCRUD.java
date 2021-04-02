package Interfaces;

import Modelo.Rol;
import java.util.List;

public interface RolCRUD {

    public List listar();

    public Rol list(int id);

    public boolean add(Rol var);
    
    public boolean edit(Rol var);
    
    public boolean eliminar(int id);
}
