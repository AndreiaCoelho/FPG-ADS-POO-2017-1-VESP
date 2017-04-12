<%-- 
    Document   : form
    Created on : 12/04/2017, 14:15:59
    Author     : RicardoPupo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Form</h1>
        <%
            String nome = request.getParameter("nome");
            String idade = request.getParameter("idade");
        %>
        <%if(nome != null){%>
            <h2>Seu nome é <%= nome %> 
                e você tem <%= idade %> anos.</h2>
        <%}%>
        
        <form>
            Nome: <input type="text" name="nome"/>
            Idade: <input type="number" name="idade"/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
