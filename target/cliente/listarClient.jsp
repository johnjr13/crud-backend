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
                out.print("Id: " + list.get(num).getId() + "<br><br>");
                out.print("Nome: " + list.get(num).getNome() + "<br><br>");
                out.print("Cpf: " + Long.valueOf(list.get(num).getCpf()) + "<br><br>");
                out.print("Idade: " + Long.valueOf(list.get(num).getIdade()) + "<br<br>");
                
                out.print("<br><br><a href='frmlExcluirClient.jsp?id='" 
                            + list.get(num).getId() 
                            + "&nome=" + list.get(num).getNome() 
                            + "'> Excluir </a>"
                );
            }
            
            }catch(Exception e){
                out.print(e);
            }
        %>
        
        
    </body>
</html>
