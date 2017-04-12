<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Form</h1>
        <form action="form-response.jsp">
            Nome: <input type="text" name="nome"/>
            Idade: <input type="number" name="idade"/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
