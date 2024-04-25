<%-- 
    Document   : index
    Created on : 04-abr-2024, 13:37:15
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
      <div>App que calcula la media de 3 notas</div>

        <form name="destino" action="destino.jsp" method="POST">
            Introduzca el primer numero:
            <input type="text" name="numero1"><br>
            Introduzca el segundo numero:
             <input type="text" name="numero2"><br>
            Introduzca el tercer numero:
             <input type="text" name="numero3"><br>
           
            <input type="submit" value="OK">
        </form>
    </body>
</html>
