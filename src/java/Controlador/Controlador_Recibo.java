
package Controlador;

import Modelo.Recibo;
import ModeloDAO.ReciboDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jorda
 */
public class Controlador_Recibo extends HttpServlet {

    String listar = "Vistas/Vista_Recibo/Listar.jsp";
    String add = "Vistas/Vista_Recibo/add.jsp";
    String edit = "Vistas/Vista_Recibo/edit.jsp";
        String reporte = "Vistas/Vista_Recibo/Reporte_Recibo.jsp";
    Recibo u = new Recibo();
    ReciboDAO dao = new ReciboDAO();

    int idCap;
    int IdRecibo;
    int IdVendedor_Fk;
    int IdCliente_Fk;
    Date Fech_Recibo;
    int Total;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Recibo</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Recibo at " + request.getContextPath() + "</h1>");
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
            IdVendedor_Fk = Integer.parseInt(request.getParameter("txtIdVendedor_Fk"));
            IdCliente_Fk = Integer.parseInt(request.getParameter("txtIdCliente_Fk"));
            Fech_Recibo = Date.valueOf(request.getParameter("txtFech_Recibo"));
            Total = Integer.parseInt(request.getParameter("txtTotal"));
            u.setIdVendedor_Fk(IdVendedor_Fk);
            u.setIdCliente_Fk(IdCliente_Fk);
            u.setFech_Recibo(Fech_Recibo);
            u.setTotal(Total);
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtIdRecibo"));
            IdVendedor_Fk = Integer.parseInt(request.getParameter("txtIdVendedor_Fk"));
            IdCliente_Fk = Integer.parseInt(request.getParameter("txtIdCliente_Fk"));
            Fech_Recibo = Date.valueOf(request.getParameter("txtFech_Recibo"));
            Total = Integer.parseInt(request.getParameter("txtTotal"));
            u.setIdRecibo(idCap);
            u.setIdVendedor_Fk(IdVendedor_Fk);
            u.setIdCliente_Fk(IdCliente_Fk);
            u.setFech_Recibo(Fech_Recibo);
            u.setTotal(Total);

            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            idCap = Integer.parseInt(request.getParameter("id"));
            u.setIdRecibo(idCap);
            dao.eliminar(idCap);
            acceso = listar;
        }else if (action.equalsIgnoreCase("reporte")) {
            request.getRequestDispatcher("Vistas/Vista_Recibo/Reporte_Recibo.jsp").forward(request,response);
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
