package Modelo;

public class Categoria {

    int IdCategoria;
    String Nom_Categoria;
    String Descripcion;

    public Categoria() {
    }

    public Categoria(String Nom_Categoria, String Descripcion) {
        this.Nom_Categoria = Nom_Categoria;
        this.Descripcion = Descripcion;
    }

    public int getIdCategoria() {
        return IdCategoria;
    }

    public void setIdCategoria(int IdCategoria) {
        this.IdCategoria = IdCategoria;
    }

    public String getNom_Categoria() {
        return Nom_Categoria;
    }

    public void setNom_Categoria(String Nom_Categoria) {
        this.Nom_Categoria = Nom_Categoria;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

}
