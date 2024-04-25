<%-- 
    Document   : destino
    Created on : 04-abr-2024, 13:25:41
    Author     : Fran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="3; URL=index.jsp">

        <title>JSP Page</title>
    </head>
    <body>
        <%
        double n1,n2,n3;
        n1=Double.parseDouble(request.getParameter("numero1"));
        n2=Double.parseDouble(request.getParameter("numero2"));
        n3=Double.parseDouble(request.getParameter("numero3"));

        out.println((n1+n2+n3)/3);
        %>
    </body>
</html>
