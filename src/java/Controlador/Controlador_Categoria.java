package Controlador;

import Modelo.Categoria;
import ModeloDAO.CategoriaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador_Categoria extends HttpServlet {

    String listar = "Vistas/Vista_Categoria/Listar.jsp";
    String add = "Vistas/Vista_Categoria/add.jsp";
    String edit = "Vistas/Vista_Categoria/edit.jsp";
    Categoria u = new Categoria();
    CategoriaDAO dao = new CategoriaDAO();
    
    int idCap;
    int IdCategoria;
    String Nom_Categoria;
    String Descripcion;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Categoria</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Categoria at " + request.getContextPath() + "</h1>");
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
            Nom_Categoria = request.getParameter("txtNom_Categoria");
            Descripcion = request.getParameter("txtDescripcion");
            u.setNom_Categoria(Nom_Categoria);
            u.setDescripcion(Descripcion);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdCategoria"));
            Nom_Categoria = request.getParameter("txtNom_Categoria");
            Descripcion = request.getParameter("txtDescripcion");
            u.setIdCategoria(idCap);
            u.setNom_Categoria(Nom_Categoria);
            u.setDescripcion(Descripcion);
            
            dao.edit(u);
            acceso = listar;
        }else if (action.equalsIgnoreCase("eliminar")){
        idCap=Integer.parseInt(request.getParameter("id"));
        u.setIdCategoria(idCap);
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