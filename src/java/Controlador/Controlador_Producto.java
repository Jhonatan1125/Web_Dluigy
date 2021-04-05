/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import ModeloDAO.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador_Producto extends HttpServlet {

    String listar = "Vistas/Vista_Producto/Listar.jsp";
    String add = "Vistas/Vista_Producto/add.jsp";
    String edit = "Vistas/Vista_Producto/edit.jsp";
     String reporte = "Vistas/Vista_Producto/Reporte_Producto.jsp";
    Producto u = new Producto();
    ProductoDAO dao = new ProductoDAO();

    int idCap;
    int IdProducto;
    int IdInventario_Fk;
    int IdCategoria_Fk;
    String Nom_Prod;
    String Color_Prod;
    String Talla_Prod;
    String Material_Prod;
    int Precio_Unitario_Venta;
    int Precio_Unitario_Compra;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Producto</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Producto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            IdInventario_Fk = Integer.parseInt(request.getParameter("txtIdInventario_Fk"));
            IdCategoria_Fk = Integer.parseInt(request.getParameter("txtIdCategoria_Fk"));
            Nom_Prod = request.getParameter("txtNom_Prod");
            Color_Prod = request.getParameter("txtColor_Prod");
            Talla_Prod = request.getParameter("txtTalla_Prod");
            Material_Prod = request.getParameter("txtMaterial_Prod");
            Precio_Unitario_Venta = Integer.parseInt(request.getParameter("txtPrecio_Unitario_Venta"));
            Precio_Unitario_Compra = Integer.parseInt(request.getParameter("txtPrecio_Unitario_Compra"));
            u.setIdInventario_Fk(IdInventario_Fk);
            u.setIdCategoria_Fk(IdCategoria_Fk);
            u.setNom_Prod(Nom_Prod);
            u.setColor_Prod(Color_Prod);
            u.setTalla_Prod(Talla_Prod);
            u.setMaterial_Prod(Material_Prod);
            u.setPrecio_Unitario_Venta(Precio_Unitario_Venta);
            u.setPrecio_Unitario_Compra(Precio_Unitario_Compra);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdProducto"));
            IdInventario_Fk = Integer.parseInt(request.getParameter("txtIdInventario_Fk"));
            IdCategoria_Fk = Integer.parseInt(request.getParameter("txtIdCategoria_Fk"));
            Nom_Prod = request.getParameter("txtNom_Prod");
            Color_Prod = request.getParameter("txtColor_Prod");
            Talla_Prod = request.getParameter("txtTalla_Prod");
            Material_Prod = request.getParameter("txtMaterial_Prod");
            Precio_Unitario_Venta = Integer.parseInt(request.getParameter("txtPrecio_Unitario_Venta"));
            Precio_Unitario_Compra = Integer.parseInt(request.getParameter("txtPrecio_Unitario_Compra"));
            u.setIdProducto(idCap);
            u.setIdInventario_Fk(IdInventario_Fk);
            u.setIdCategoria_Fk(IdCategoria_Fk);
            u.setNom_Prod(Nom_Prod);
            u.setColor_Prod(Color_Prod);
            u.setTalla_Prod(Talla_Prod);
            u.setMaterial_Prod(Material_Prod);
            u.setPrecio_Unitario_Venta(Precio_Unitario_Venta);
            u.setPrecio_Unitario_Compra(Precio_Unitario_Compra);

            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            idCap = Integer.parseInt(request.getParameter("id"));
            u.setIdProducto(idCap);
            dao.eliminar(idCap);
            acceso = listar;
        }else if (action.equalsIgnoreCase("reporte")) {
            request.getRequestDispatcher("Vistas/Vista_Producto/Reporte_Producto.jsp").forward(request,response);
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
