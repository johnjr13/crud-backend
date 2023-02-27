<%-- 
    Document   : atualizarClient
    Created on : 25 de fev. de 2023, 08:38:15
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
                clientDTO.setId(Integer.parseInt(request.getParameter("id")));
                clientDTO.setName(request.getParameter("nome"));
                clientDTO.setCpf(Long.valueOf(request.getParameter("cpf")));
                clientDTO.setIdade(Long.valueOf(request.getParameter("idade")));
                
                
                ClientDAO clientDAO = new ClientDAO();
                clientDAO.updateClient(clientDTO);
                
                response.sendRedirect("../cliente/listarClient.jsp");
               
          
            
            }catch (Exception e){
                throw new Exception("Erro ao executar SQL:"+e);
            }
        
        
        %>
    </body>
</html>
