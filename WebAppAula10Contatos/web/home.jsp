<%@page import="br.com.fatecpg.contatos.Database"%>
<%@page import="br.com.fatecpg.contatos.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 10: Contatos</title>
    </head>
    <body>
        <h1>Aula 10</h1>
        <h2>Contatos</h2>
        <fieldset>
            <legend>Novo Contato</legend>
            <form>
                Nome: <input type="text" name="nome"/>
                Email: <input type="text" name="email"/>
                Telefone: <input type="text" name="telefone"/>
                <input type="submit" name="incluir" value="Incluir"/>
            </form>
        <%
            try{
                if(request.getParameter("incluir")!=null){
                    String nome = request.getParameter("nome");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    Contato c = new Contato();
                    c.setNome(nome);
                    c.setEmail(email);
                    c.setTelefone(telefone);
                    Database.getContatos().add(c);
                    response.sendRedirect(request.getRequestURI());
                }else if(request.getParameter("excluir")!=null){
                    String nome = request.getParameter("nome");
                    for(int i=0; i<Database.getContatos().size(); i++){
                        if(Database.getContatos().get(i).getNome().equals(nome)){
                            Database.getContatos().remove(i);
                            break;
                        }
                    }
                    response.sendRedirect(request.getRequestURI());
                }
            }catch(Exception ex){%>
            <div style="color: red;">Erro: <%= ex.getMessage() %></div>
          <%}
        %>
        </fieldset><br/>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>
            <% for(Contato c: Database.getContatos()){%>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getEmail()%></td>
                <td><%= c.getTelefone() %></td>
                <td>
                    <form>
                        <input type="hidden" name="nome" value="<%= c.getNome() %>"/>
                        <input type="submit" name="excluir" value="Excluir"/>
                    </form>
                </td>
            </tr>
            <% }%>
        </table>
    </body>
</html>