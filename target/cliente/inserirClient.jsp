<%-- 
    Document   : inserirClient
    Created on : 24 de fev. de 2023, 00:08:11
    Author     : John Junior
--%>

<%@page import="br.com.empresa.DAO.ClientDAO"%>
<%@page import="br.com.empresa.DTO.ClientDTO"%>
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
                ClientDTO clientDTO = new ClientDTO();
                clientDTO.setNome(request.getParameter("name"));
                clientDTO.setCpf(Long.valueOf(request.getParameter("cpf")) );
                clientDTO.setIdade(Long.valueOf(request.getParameter("idade")));
                
                ClientDAO clientDAO = new ClientDAO();
                clientDAO.insertClient(clientDTO);
                
            }catch (Exception e){
            	out.print(e);
            }
        %>
        
    </body>
</html>
