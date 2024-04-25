<%-- 
    Document   : destino
    Created on : 17-abr-2024, 13:43:44
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
            String nombre = request.getParameter("nombreCalendario");
            String nombreMes = request.getParameter("mes");
            int ano =Integer.parseInt(request.getParameter("ano"));
            String dia1Nombre = request.getParameter("dia1");
            
int numDias = Integer.parseInt(request.getParameter("numDias"));

int contador=0;

if(dia1Nombre.equals("M")){
        contador=1;
}else if(dia1Nombre.equals("X")){
    contador=2;
}else if(dia1Nombre.equals("J")){
    contador=3;
}else if(dia1Nombre.equals("V")){
    contador=4;
}else if(dia1Nombre.equals("S")){
    contador=5;
}else if(dia1Nombre.equals("D")){
    contador=6;
}

             out.println(nombre);
          %>  
          <br>
          <%
out.println("mes:"+nombreMes+" año:"+ano);
%>
             
             <h3>L M X J V S D</h3>
             <%
            for(int i=1;i<=numDias+contador;i++){
                
                if(i>contador){
                 if(i%8==0){
                    %>
                    <br>
                    <%
                }else{
}
                                out.print(i-contador);

            }else{
                                out.print("n");

}
               
            }
            %>
        
        
        
        
        
        
        
    </body>
</html>
