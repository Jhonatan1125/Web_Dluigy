
<%@page import="java.util.Map"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="Config.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
    </head>
    <body>
        <h1>Producto</h1>
         <%
            Connection con;
            Conexion cnx = new Conexion();
            con = cnx.getConnection();
            File reporte = new File(application.getRealPath("Vistas/Vista_Producto/Producto.jasper"));
            Map<String, Object> parameter = new HashMap<String, Object>();
            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parameter, con);

            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outS = response.getOutputStream();
            outS.write(bytes, 0, bytes.length);
            outS.flush();
            outS.close();
        %>
    </body>
</html>
