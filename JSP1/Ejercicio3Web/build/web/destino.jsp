<%-- 
    Document   : destino
    Created on : 04-abr-2024, 13:18:46
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
        Mi nombre es
        <% out.print(request.getParameter("cadenaIntro"));%>
    </body>
</html>
