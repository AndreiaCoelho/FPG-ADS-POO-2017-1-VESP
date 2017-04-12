<%-- 
    Document   : random
    Created on : 12/04/2017, 15:40:21
    Author     : RicardoPupo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaEE: JSP</title>
    </head>
    <body>
        <h3><a href="home.jsp">Voltar</a></h3>
        <h1>JavaEE: JSP</h1>
        <h2>Números aleatórios</h2>
        <%
            int n = 10;
            try{n = Integer.parseInt(request.getParameter("n"));
            }catch(Exception e){}
        %>
        <hr/>
        <form>
            Quantidade de números: <br/>
            <input type="number" name="n" value="<%= n%>"/>
            <input type="submit"/>
        </form>
        <hr/>
        <table border="2">
            <tr><th>Índice</th><th>Número</th></tr>
            <%for(int i=1; i<=n; i++){%>
            <tr>
                <td><%= i %></td>
                <td><%= ((int)(Math.random()*100)) %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
