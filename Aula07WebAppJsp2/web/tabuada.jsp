<%-- 
    Document   : tabuada
    Created on : 12/04/2017, 15:40:27
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
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>JavaEE: JSP</h1>
        <h2>Números aleatórios</h2>
        <%
            int n = 10;
            try{n = Integer.parseInt(request.getParameter("n"));
            }catch(Exception e){}
        %>
        <hr/>
        <form>
            Número: <br/>
            <input type="number" name="n" value="<%= n%>"/>
            <input type="submit"/>
        </form>
        <hr/>
        <table>
            <%for(int i=1; i<=10; i++){%>
            <tr>
                <td><%= n %></td>
                <td>x <%= i %></td>
                <td>= <%= (n*i) %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
