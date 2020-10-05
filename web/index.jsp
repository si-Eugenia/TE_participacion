<%-- 
    Document   : index
    Created on : 4/10/2020, 01:05:01 PM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Encuesta para desarrolladores</h1>
        <p>Por favor escriba su nombre y los lenguajes de su preferencia:</p>
    <from action="ServletControlador" method="POST">
        <table>
            <tr>
                <td>Nombre</td><td><imput type="text" name="nombre" value=""/></td>
            </tr>
            <tr>
                <td>Java</td><td><imput type="checkbox" name="lenguaje" value="Java"/></td>
            </tr>
            <tr>
                <td>PHP</td><td><imput type="checkbox" name="lenguaje" value="PHP"/></td>
            </tr>
            <tr>
                <td>Python</td><td><imput type="checkbox" name="lenguaje" value="Python"/></td>
            </tr>
            <tr>
                <td>C#</td><td><imput type="checkbox" name="lenguaje" value="Csharp"/></td>
            </tr>
            <tr>
                <td></td><td><imput type="submit" name="Enbiar"/></td>
            </tr>
        </table>2
    </from>
    </body>
</html>
