<%-- 
    Document   : destino
    Created on : 17-abr-2024, 10:11:39
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
              double contador =numero ;
                            double contador1 =numero ;


                 for(double i=0;i<numero;i++){
                     for(double j=0;j<numero*2;j++){
                         if((j==contador||j==contador1||i==numero-1)&&(j!=0)){
                                                         out.print("x");

                         }else{
                                                            out.print("‎ ‎ ");

                         }

                         
                     }
                      contador++;
                      contador1--;
                      %>
                     <br>
                      <%
                 }
        %>
    </body>
</html>
