<%-- 
    Document   : form-response
    Created on : 12/04/2017, 14:35:56
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
        <h3><a href="form2.jsp">Voltar</a></h3>
        <%
            String nome = request.getParameter("nome");
            String idade = request.getParameter("idade");
        %>
        <%if(nome != null){%>
            <h2>Seu nome é <%= nome %> 
                e você tem <%= idade %> anos.</h2>
        <%}else{%>
            <h2>Nenhum parâmetro informado.</h2>
        <%}%>
    </body>
</html>
