
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.emergentes.modelo.Encuesta" %>
<%
    Encuesta encu = (Encuesta) request.getAttribute("miEncu");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encuesta</title>
    </head>
    <body>
        <h1>gracias por participar</h1>
        <p>su nombre es:<%= encu.getNombre() %></p>
        <p>y los lenguajes de su preferencia son:</p> 
        <ul>
            <%
                String[] lenguajes = encu.getLenguaje();
                if (lenguajes != null) {
                    for (int i = 0; i < lenguajes.length; i++) {
            %>
            <li><%= lenguajes[i]%></li>
                <%
                        }
                    }
                %>
        </ul>
    </body>
</html>

