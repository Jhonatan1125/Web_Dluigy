package Controlador;

import Modelo.Fidelizacion;
import ModeloDAO.FidelizacionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador_Fidelizacion extends HttpServlet {

    String listar = "Vistas/Vista_Fidelizacion/Listar.jsp";
    String add = "Vistas/Vista_Fidelizacion/add.jsp";
    String edit = "Vistas/Vista_Fidelizacion/edit.jsp";
    Fidelizacion u = new Fidelizacion();
    FidelizacionDAO dao = new FidelizacionDAO();

    int idCap;
    int IdFidelizacion;
    int Punt_Total;
    Date Fech_Caducidad;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Fidelizacion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Fidelizacion at " + request.getContextPath() + "</h1>");
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
            Punt_Total = Integer.parseInt(request.getParameter("txtPunt_Total"));
            Fech_Caducidad = Date.valueOf(request.getParameter("txtFech_Caducidad"));
            u.setPunt_Total(Punt_Total);
            u.setFech_Caducidad(Fech_Caducidad);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdFidelizacion"));
            Punt_Total = Integer.parseInt(request.getParameter("txtPunt_Total"));
            Fech_Caducidad = Date.valueOf(request.getParameter("txtFech_Caducidad"));
            u.setIdFidelizacion(idCap);
            u.setPunt_Total(Punt_Total);
            u.setFech_Caducidad(Fech_Caducidad);
            
            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            idCap = Integer.parseInt(request.getParameter("id"));
            u.setIdFidelizacion(idCap);
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
