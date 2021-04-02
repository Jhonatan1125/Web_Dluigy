package Controlador;

import Modelo.Rol;
import ModeloDAO.RolDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador_Rol extends HttpServlet {

    String listar = "Vistas/Vista_Rol/Listar.jsp";
    String add = "Vistas/Vista_Rol/add.jsp";
    String edit = "Vistas/Vista_Rol/edit.jsp";
    Rol u = new Rol();
    RolDAO dao = new RolDAO();
    int idCap;
    int IdRol;
    String Nom_Rol;
    String Descripcion;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Rol</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Rol at " + request.getContextPath() + "</h1>");
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
            Nom_Rol = request.getParameter("txtNom_Rol");
            Descripcion = request.getParameter("txtDescripcion");
            u.setNom_Rol(Nom_Rol);
            u.setDescripcion(Descripcion);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdRol"));
            Nom_Rol = request.getParameter("txtNom_Rol");
            Descripcion = request.getParameter("txtDescripcion");
            u.setIdRol(idCap);
            u.setNom_Rol(Nom_Rol);
            u.setDescripcion(Descripcion);
            dao.edit(u);
            acceso = listar;
        }else if (action.equalsIgnoreCase("eliminar")){
        idCap=Integer.parseInt(request.getParameter("id"));
        u.setIdRol(idCap);
        dao.eliminar(idCap);
        acceso=listar;
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
