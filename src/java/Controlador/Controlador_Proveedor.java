/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Proveedor;
import ModeloDAO.ProveedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jorda
 */
public class Controlador_Proveedor extends HttpServlet {

    String listar = "Vistas/Vista_Proveedor/Listar.jsp";
    String add = "Vistas/Vista_Proveedor/add.jsp";
    String edit = "Vistas/Vista_Proveedor/edit.jsp";
    Proveedor u = new Proveedor();
    ProveedorDAO dao = new ProveedorDAO();

    int idCap;
    int IdProveedor;
    String Nom_Prove;
    String Correo_Prove;
    String Telefono_Prove;
    String Direccion_Prove;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Proveedor</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Proveedor at " + request.getContextPath() + "</h1>");
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
            
            Nom_Prove = request.getParameter("txtNom_Prove");
            Correo_Prove = request.getParameter("txtCorreo_Prove");
            Telefono_Prove = request.getParameter("txtTelefono_Prove");
            Direccion_Prove = request.getParameter("txtDireccion_Prove");
            u.setNom_Prove(Nom_Prove);
            u.setCorreo_Prove(Correo_Prove);
            u.setTelefono_Prove(Telefono_Prove);
            u.setDireccion_Prove(Direccion_Prove);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdProveedor"));
            Nom_Prove = request.getParameter("txtNom_Prove");
            Correo_Prove = request.getParameter("txtCorreo_Prove");
            Telefono_Prove = request.getParameter("txtTelefono_Prove");
            Direccion_Prove = request.getParameter("txtDireccion_Prove");
            u.setIdProveedor(idCap);
            u.setNom_Prove(Nom_Prove);
            u.setCorreo_Prove(Correo_Prove);
            u.setTelefono_Prove(Telefono_Prove);
            u.setDireccion_Prove(Direccion_Prove);
            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            idCap = Integer.parseInt(request.getParameter("id"));
            u.setIdProveedor(idCap);
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
