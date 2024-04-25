<%-- 
    Document   : index
    Created on : 17-abr-2024, 10:59:27
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

        <h2>Cuestionario</h2>
        
                <form name="destino" action="destino.jsp" method="POST">

        <h3>Primera pregunta:¿Cuál es el resultado de 2 + 2?</h3>
                 a)3   <input type="radio"  name="1" value="a">
                 b)4   <input type="radio"  name="1" value="b">
        <h3>Primera pregunta:¿Cuál de los siguientes es un mamífero?</h3>
                 a)Serpiente  <input type="radio"  name="2" value="a">
                 b)Perro   <input type="radio"  name="2" value="b">                 
        <h3>Primera pregunta:¿Qué planeta es el más grande del sistema solar?</h3>
                 a)Venus   <input type="radio"  name="3" value="a">
                 b)Júpiter <input type="radio"  name="3" value="b">
        <h3>Primera pregunta:¿Cuál es el ingrediente principal del sushi?</h3>
                 a)Yira   <input type="radio"  name="4" value="a">
                 b)Arroz    <input type="radio"  name="4" value="b">
                             <input type="submit" value="enviar" name="enviar">

                </form>        
    </body>
</html>
