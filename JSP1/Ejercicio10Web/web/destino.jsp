<%-- 
    Document   : destino
    Created on : 17-abr-2024, 10:59:51
    Author     : Fran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String[] respuestasCorrectas = {"b", "b", "b", "a"};

    String respuesta1 = request.getParameter("1");
    String respuesta2 = request.getParameter("2");
    String respuesta3 = request.getParameter("3");
    String respuesta4 = request.getParameter("4");

    int respuestasCorrectasCount = 0;
    if (respuesta1 != null && respuesta1.equals(respuestasCorrectas[0])) {
        respuestasCorrectasCount++;
    }
    if (respuesta2 != null && respuesta2.equals(respuestasCorrectas[1])) {
        respuestasCorrectasCount++;
    }
    if (respuesta3 != null && respuesta3.equals(respuestasCorrectas[2])) {
        respuestasCorrectasCount++;
    }
    if (respuesta4 != null && respuesta4.equals(respuestasCorrectas[3])) {
        respuestasCorrectasCount++;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado del cuestionario</title>
</head>
<body>
    <h2>Resultado del cuestionario</h2>
    <p>Preguntas respondidas correctamente: <%= respuestasCorrectasCount %> de 4</p>
</body>
</html>
