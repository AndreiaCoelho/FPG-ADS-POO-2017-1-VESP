<%-- 
    Document   : tabela
    Created on : 12/04/2017, 15:17:17
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
        <h1>Tabela</h1>
        <%
            int lins = 10;int cols = 3;
            try{
                lins = Integer.parseInt(request.getParameter("lins"));
                cols = Integer.parseInt(request.getParameter("cols"));
            }catch(Exception e){}
        %>
        <table border="1">
            <tr>
                <% for(int col=1; col<=cols; col++){ %>
                <th>Coluna <%= col%></th>
                <% } %>
            </tr>
            <% for(int lin=1; lin<=lins; lin++){ %>
            <tr>
                <% for(int col=1; col<=cols; col++){ %>
                <th><%= lin%>,<%= col%></th>
                <% } %>
            </tr>
            <% } %>
        </table>
    </body>
</html>
