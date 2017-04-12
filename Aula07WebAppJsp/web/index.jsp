<%-- 
    Document   : index
    Created on : 12/04/2017, 14:04:42
    Author     : RicardoPupo
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Date agora = new Date();
            out.println("<h2>Agora: "+agora+"</h2>");
        %>
    </body>
</html>
