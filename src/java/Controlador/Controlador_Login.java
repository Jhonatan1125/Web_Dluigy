/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.Sesion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JHsan
 */
public class Controlador_Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /* TODO output your page here. You may use following sample code. */
        Sesion metodos =  new Sesion();
        String txtUsuario = request.getParameter("txtUsuario");
        String txtClave = request.getParameter("txtClave");
        
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">"); //Etiqueta de apertura del script

        String iniciarSesion = metodos.buscarUsuarioInicioSesion(txtUsuario, txtClave);
        
        switch (iniciarSesion) {
            case "Admin":
                out.println("alert('¡Bienvenido a Dluigy!\\niniciaste Sesion como "+txtUsuario+"\\nCon el Rol "+iniciarSesion+"')");
                out.println("location='Admin.jsp'");
                break;
            case "Vendedor":
                out.println("alert('¡Bienvenido a Dluigy!\\niniciaste Sesion como "+txtUsuario+"\\nCon el Rol "+iniciarSesion+"')");
                out.println("location='Vendedor.jsp'");
                break;
            case "Cliente":
                out.println("alert('¡Bienvenido a Dluigy!\\niniciaste Sesion como "+txtUsuario+"\\nCon el Rol "+iniciarSesion+"')");
                out.println("location='Cliente.jsp'");
                break;
            default:
                out.println("alert('Datos Incorrectos, Verifica los datos o registrate :)')");
                out.println("location='registro.jsp'");
                break;
        }
        
        System.out.println("El valor de iniciar Sesion es: "+iniciarSesion);
        
        out.println("</script>");// Etiqueta de Cierre del script
        out.println("</body>");
        out.println("</html>");

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
        processRequest(request, response);
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
