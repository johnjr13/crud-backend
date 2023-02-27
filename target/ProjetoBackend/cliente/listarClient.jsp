<%-- 
    Document   : listarClient
    Created on : 24 de fev. de 2023, 01:00:49
    Author     : John Junior
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.empresa.DTO.ClientDTO"%>
<%@page import="br.com.empresa.DAO.ClientDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            ClientDAO clientDAO = new ClientDAO();
            ArrayList<ClientDTO> list = clientDAO.listClient();
            
            for(int num = 0; num <list.size(); num ++){
                out.print("Código Cliente: " + list.get(num).getId() + "<br>");
                out.print("Nome: " + list.get(num).getNome() + "<br>");
                out.print("Cpf: " + Long.valueOf(list.get(num).getCpf()) + "<br>");
                out.print("Idade: " + Long.valueOf(list.get(num).getIdade()) + "<br>");
                
                out.print("<br><br><a href='frmlExcluirClient.jsp?id=" 
                            + list.get(num).getId() 
                            + "&nome=" + list.get(num).getNome() 
                            + "&cpf=" + list.get(num).getCpf() 
                            + "&idade=" + list.get(num).getIdade() 
                            + "'> Excluir </a>"
                );
                out.print("<a href='frmlUpdateClient.jsp?id=" 
                            + list.get(num).getId() 
                            + "&nome=" + list.get(num).getNome() 
                            + "&cpf=" + list.get(num).getCpf() 
                            + "&idade=" + list.get(num).getIdade() 
                            + "'> Alterar </a><br><br>"
                );
            }
            
            }catch(Exception e){
                out.print(e);
            }
        %>
        
        
    </body>
</html>
