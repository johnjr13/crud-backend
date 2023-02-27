<%-- 
    Document   : deletarClient
    Created on : 25 de fev. de 2023, 08:38:27
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
                
                ClientDAO clientDAO = new ClientDAO();
                clientDAO.deletClient(clientDTO);
                response.sendRedirect("../cliente/listarClient.jsp");
                
            }catch (Exception e){
            	out.print(e);
            }
        %>
    </body>
</html>
