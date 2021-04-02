/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador_Usuario extends HttpServlet {

    String listar = "Vistas/Vista_Usuario/Listar.jsp";
    String add = "Vistas/Vista_Usuario/add.jsp";
    String edit = "Vistas/Vista_Usuario/edit.jsp";
    Usuario u = new Usuario();
    UsuarioDAO dao = new UsuarioDAO();
    int id;
    int IdRol;
    String P_nombre;
    String S_nombre;
    String P_apellido;
    String S_apellido;
    String telefono;
    Date nacimiento;
    String Correo;
    String Clave;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Usuario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Usuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            IdRol = Integer.parseInt(request.getParameter("Rol"));
            P_nombre = request.getParameter("P_nombre");
            S_nombre = request.getParameter("S_nombre");
            P_apellido = request.getParameter("P_apellido");
            S_apellido = request.getParameter("S_apellido");
            telefono = request.getParameter("Telefono");
            nacimiento = Date.valueOf(request.getParameter("Nacimiento"));
            Correo = request.getParameter("Correo");
            Clave = request.getParameter("Clave");
            u.setIdrol_Fk(IdRol);
            u.setP_Nombre(P_nombre);
            u.setS_Nombre(S_nombre);
            u.setP_Apellido(P_apellido);
            u.setS_Apellido(S_apellido);
            u.setTelefono(telefono);
            u.setFech_Nacimiento(nacimiento);
            u.setCorreo(Correo);
            u.setClave_Cuenta(Clave);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idper", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            id = Integer.parseInt(request.getParameter("ID"));
            IdRol = Integer.parseInt(request.getParameter("Rol"));
            P_nombre = request.getParameter("P_nombre");
            S_nombre = request.getParameter("S_nombre");
            P_apellido = request.getParameter("P_apellido");
            S_apellido = request.getParameter("S_apellido");
            telefono = request.getParameter("Telefono");
            nacimiento = Date.valueOf(request.getParameter("Nacimiento"));
            Correo = request.getParameter("Correo");
            Clave = request.getParameter("Clave");
            u.setIDusuario(id);
            u.setIdrol_Fk(IdRol);
            u.setP_Nombre(P_nombre);
            u.setS_Nombre(S_nombre);
            u.setP_Apellido(P_apellido);
            u.setS_Apellido(S_apellido);
            u.setTelefono(telefono);
            u.setFech_Nacimiento(nacimiento);
            u.setCorreo(Correo);
            u.setClave_Cuenta(Clave);
            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            id = Integer.parseInt(request.getParameter("id"));
            u.setIDusuario(id);
            dao.eliminar(id);
            acceso=listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
