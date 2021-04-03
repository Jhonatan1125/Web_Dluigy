package Controlador;

import Modelo.Cliente;
import ModeloDAO.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador_Cliente extends HttpServlet {

    String listar = "Vistas/Vista_Cliente/Listar.jsp";
    String add = "Vistas/Vista_Cliente/add.jsp";
    String edit = "Vistas/Vista_Cliente/edit.jsp";
    Cliente u = new Cliente();
    ClienteDAO dao = new ClienteDAO();

    int idCap;
    int idCliente;
    int IdUsuarios_Fk;
    int IdFidelizacion_Fk;
    int Val_Total_Comp;
    int Num_Comp;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Cliente</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Cliente at " + request.getContextPath() + "</h1>");
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
            IdFidelizacion_Fk = Integer.parseInt(request.getParameter("txtIdFidelizacion_Fk"));
            Val_Total_Comp = Integer.parseInt(request.getParameter("txtVal_Total_Comp"));
            Num_Comp = Integer.parseInt(request.getParameter("txtNum_Comp"));
            u.setIdUsuarios_Fk(IdUsuarios_Fk);
            u.setIdFidelizacion_Fk(IdFidelizacion_Fk);
            u.setVal_Total_Comp(Val_Total_Comp);
            u.setNum_Comp(Num_Comp);
            
            dao.add(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("IDFun", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            idCap = Integer.parseInt(request.getParameter("txtidCliente"));
            IdUsuarios_Fk = Integer.parseInt(request.getParameter("txtIdUsuarios_Fk"));
            IdFidelizacion_Fk = Integer.parseInt(request.getParameter("txtIdFidelizacion_Fk"));
            Val_Total_Comp = Integer.parseInt(request.getParameter("txtVal_Total_Comp"));
            Num_Comp = Integer.parseInt(request.getParameter("txtNum_Comp"));
            u.setIdCliente(idCap);
            u.setIdUsuarios_Fk(IdUsuarios_Fk);
            u.setIdFidelizacion_Fk(IdFidelizacion_Fk);
            u.setVal_Total_Comp(Val_Total_Comp);
            u.setNum_Comp(Num_Comp);
            
            
            dao.edit(u);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            idCap = Integer.parseInt(request.getParameter("id"));
            u.setIdCliente(idCap);
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
