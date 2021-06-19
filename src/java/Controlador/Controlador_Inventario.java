/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Inventario;
import ModeloDAO.InventarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador_Inventario extends HttpServlet {

    String listar = "Vistas/Vista_Inventario/Listar.jsp";
    String add = "Vistas/Vista_Inventario/add.jsp";
    String edit = "Vistas/Vista_Inventario/edit.jsp";
    Inventario u = new Inventario();
    InventarioDAO dao = new InventarioDAO();

    int idCap;
    int IdInventario;
    int Cantidad;
    Date Fech_Entrada;
    int Cant_Entrada;
    int Cant_Salida;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Inventario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Inventario at " + request.getContextPath() + "</h1>");
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

            Cantidad = Integer.parseInt(request.getParameter("txtCantidad"));
            Fech_Entrada = Date.valueOf(request.getParameter("txtFech_Entrada"));
            Cant_Entrada = Integer.parseInt(request.getParameter("txtCant_Entrada"));
            Cant_Salida = Integer.parseInt(request.getParameter("txtCant_Salida"));
            u.setCantidad(Cantidad);
            u.setFech_Entrada(Fech_Entrada);
            u.setCant_Entrada(Cant_Entrada);
            u.setCant_Salida(Cant_Salida);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdInventario"));
            Cantidad = Integer.parseInt(request.getParameter("txtCantidad"));
            Fech_Entrada = Date.valueOf(request.getParameter("txtFech_Entrada"));
            Cant_Entrada = Integer.parseInt(request.getParameter("txtCant_Entrada"));
            Cant_Salida = Integer.parseInt(request.getParameter("txtCant_Salida"));
            u.setIdInventario(idCap);
            u.setCantidad(Cantidad);
            u.setFech_Entrada(Fech_Entrada);
            u.setCant_Entrada(Cant_Entrada);
            u.setCant_Salida(Cant_Salida);
            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            idCap = Integer.parseInt(request.getParameter("id"));
            u.setIdInventario(idCap);
            dao.eliminar(idCap);
            acceso = listar;
        } else if (action.equalsIgnoreCase("reporte")) {
            request.getRequestDispatcher("Vistas/Vista_Inventario/Reporte_Inv.jsp").forward(request,response);
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