<%-- 
    Document   : index
    Created on : 17-abr-2024, 13:36:50
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

       <form name="destino" action="destino.jsp" method="POST">
            Nombre calendario:<input type="text" name="nombreCalendario"/>  
            Nombre mes:<input type="text" name="mes"/>  
              Año:<input type="text" name="ano"/>
            En que día cae el día 1:<input type="text" name="dia1"/>
            Número de días :<input type="text" name="numDias"/>
            <input type="submit" value="enviar" name="enviar"/>
        </form>


    </body>
</html>
