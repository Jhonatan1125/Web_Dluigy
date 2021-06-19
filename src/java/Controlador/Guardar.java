/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.Sesion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JHsan
 */
public class Guardar extends HttpServlet {

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
        Sesion metodos = new Sesion();

        String P_nombre = request.getParameter("P_nombre");
        String S_nombre = request.getParameter("S_nombre");
        String P_apellido = request.getParameter("P_apellido");
        String S_apellido = request.getParameter("S_apellido");
        String telefono = request.getParameter("Telefono");
        Date nacimiento = Date.valueOf(request.getParameter("Nacimiento"));
        String Correo = request.getParameter("Correo");
        String Clave = request.getParameter("Clave");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">"); // Etiqueta de abre del script

        boolean usuarioRepetido = metodos.buscarUsuarioRepetidoBD(Correo);
        if (usuarioRepetido == true) {//el correo ya esta registrado
            out.println("location='registro.jsp'");
            out.println("alert('¡Atencion!, el Correo " + Correo + " ya esta registrado en el sistema')");
        } else {//el correo no esta registrado en el sistema
            boolean registro = metodos.registrarUsuario(P_nombre, S_nombre, P_apellido, S_apellido, telefono, nacimiento, Correo, Clave);

            if (registro == true) {
                out.println("location='Login.jsp'");
                out.println("alert('El usuario se ha registrado con exito')");
            } else {
                 out.println("location='Login.jsp'");
                 out.println("alert('Ocurrio un error al registrar al usuario')");
               

            }
            System.out.println("El valor de registro es " + registro);
        }


        out.println("</script>");  // Etiqueta de cierre del script
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
