package Interfaces;

import Modelo.Recibo;
import java.util.List;

public interface ReciboCRUD {

    public List listar();

    public Recibo list(int id);

    public boolean add(Recibo var);

    public boolean edit(Recibo var);

    public boolean eliminar(int id);
}
