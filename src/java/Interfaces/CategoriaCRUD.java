package Interfaces;

import Modelo.Categoria;
import java.util.List;

public interface CategoriaCRUD {

    public List listar();

    public Categoria list(int id);

    public boolean add(Categoria var);

    public boolean edit(Categoria var);

    public boolean eliminar(int id);
}
