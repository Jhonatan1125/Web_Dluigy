/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Vendedor;
import ModeloDAO.VendedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador_Vendedor extends HttpServlet {

    String listar = "Vistas/Vista_Vendedor/Listar.jsp";
    String add = "Vistas/Vista_Vendedor/add.jsp";
    String edit = "Vistas/Vista_Vendedor/edit.jsp";
    Vendedor u = new Vendedor();
    VendedorDAO dao = new VendedorDAO();

    int idCap;
    int IdVendedor;
    int IdUsuarios_Fk;
    int Num_Ventas;
    Double Comision;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Vendedor</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Vendedor at " + request.getContextPath() + "</h1>");
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
            IdUsuarios_Fk = Integer.parseInt(request.getParameter("txtIdUsuarios_Fk"));
            Num_Ventas = Integer.parseInt(request.getParameter("txtNum_Ventas"));
            Comision = Double.parseDouble(request.getParameter("txtComision"));
            u.setIdUsuarios_Fk(IdUsuarios_Fk);
            u.setNum_Ventas(Num_Ventas);
            u.setComision(Comision);

            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdVendedor"));
            IdUsuarios_Fk = Integer.parseInt(request.getParameter("txtIdUsuarios_Fk"));
            Num_Ventas = Integer.parseInt(request.getParameter("txtNum_Ventas"));
            Comision = Double.parseDouble(request.getParameter("txtComision"));
            u.setIdVendedor(idCap);
            u.setIdUsuarios_Fk(IdUsuarios_Fk);
            u.setNum_Ventas(Num_Ventas);
            u.setComision(Comision);

            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            idCap = Integer.parseInt(request.getParameter("id"));
            u.setIdVendedor(idCap);
            dao.eliminar(idCap);
            acceso = listar;
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
