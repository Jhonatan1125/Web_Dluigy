/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Usuario;
import java.util.List;

/**
 *
 * @author JHsan
 */
public interface UsuarioCRUD {
    public List listar();
    public Usuario list(int id);
    public boolean add(Usuario per);
    public boolean edit(Usuario per);
    public boolean eliminar(int id);
}
