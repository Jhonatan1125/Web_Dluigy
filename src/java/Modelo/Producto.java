
package Modelo;


public class Producto {
    
    int IdProducto;
    int IdInventario_Fk;
    int IdCategoria_Fk;
    String Nom_Prod;
    String Color_Prod;
    String Talla_Prod;
    String Material_Prod;
    int Precio_Unitario_Venta;
    int Precio_Unitario_Compra;

    public Producto() {
    }

    public Producto(int IdInventario_Fk, int IdCategoria_Fk, String Nom_Prod, String Color_Prod, String Talla_Prod, String Material_Prod, int Precio_Unitario_Venta, int Precio_Unitario_Compra) {
        this.IdInventario_Fk = IdInventario_Fk;
        this.IdCategoria_Fk = IdCategoria_Fk;
        this.Nom_Prod = Nom_Prod;
        this.Color_Prod = Color_Prod;
        this.Talla_Prod = Talla_Prod;
        this.Material_Prod = Material_Prod;
        this.Precio_Unitario_Venta = Precio_Unitario_Venta;
        this.Precio_Unitario_Compra = Precio_Unitario_Compra;
    }

    public int getIdProducto() {
        return IdProducto;
    }

    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }

    public int getIdInventario_Fk() {
        return IdInventario_Fk;
    }

    public void setIdInventario_Fk(int IdInventario_Fk) {
        this.IdInventario_Fk = IdInventario_Fk;
    }

    public int getIdCategoria_Fk() {
        return IdCategoria_Fk;
    }

    public void setIdCategoria_Fk(int IdCategoria_Fk) {
        this.IdCategoria_Fk = IdCategoria_Fk;
    }

    public String getNom_Prod() {
        return Nom_Prod;
    }

    public void setNom_Prod(String Nom_Prod) {
        this.Nom_Prod = Nom_Prod;
    }

    public String getColor_Prod() {
        return Color_Prod;
    }

    public void setColor_Prod(String Color_Prod) {
        this.Color_Prod = Color_Prod;
    }

    public String getTalla_Prod() {
        return Talla_Prod;
    }

    public void setTalla_Prod(String Talla_Prod) {
        this.Talla_Prod = Talla_Prod;
    }

    public String getMaterial_Prod() {
        return Material_Prod;
    }

    public void setMaterial_Prod(String Material_Prod) {
        this.Material_Prod = Material_Prod;
    }

    public int getPrecio_Unitario_Venta() {
        return Precio_Unitario_Venta;
    }

    public void setPrecio_Unitario_Venta(int Precio_Unitario_Venta) {
        this.Precio_Unitario_Venta = Precio_Unitario_Venta;
    }

    public int getPrecio_Unitario_Compra() {
        return Precio_Unitario_Compra;
    }

    public void setPrecio_Unitario_Compra(int Precio_Unitario_Compra) {
        this.Precio_Unitario_Compra = Precio_Unitario_Compra;
    }
    
}