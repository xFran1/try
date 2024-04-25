<%-- 
    Document   : destino
    Created on : 17-abr-2024, 9:57:03
    Author     : Fran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        double numero=Double.parseDouble(request.getParameter("destino"));
                 for(int i=0;i<11;i++){
                     
                     out.print(numero+" x "+i+" = "+numero*i); %>
                     
                     <br>
                      <%
                 }
        %>
        
    </body>
</html>
