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
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Home - Lista de Clientes</title>
       <style type="text/css">
	    a {
	    color: white;
	    text-decoration: none;
	    font-weight: bold;
		}
		.b {
	    color: white;
	    text-decoration: none;
	    font-weight: bold;
		}
		
    </style>
  </head>
    <body>
        <nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1">Lista de Clientes</span>
    <span class="navbar-brand mb-0 h1"><button type="button" class="btn btn-info"><a href="../index.html">Menu</a></button></span>
  </div>
</nav>
<br><br><br>
    <div class="container-xl card">
    <table class="table">
                <thead>
                  <tr> 
                    <th scope="col">Código Cliente</th>
                    <th scope="col">Nome</th>
                    <th scope="col">CPF</th>
                    <th scope="col">Idade</th>
                    <th scope="col">Ações</th>
                  </tr>
                </thead>
            <tbody>
        <%
            try{
            ClientDAO clientDAO = new ClientDAO();
            ArrayList<ClientDTO> list = clientDAO.listClient();
        
            for(int num = 0; num <list.size(); num ++){%>

              
                  <tr>
                    <td><% out.print(list.get(num).getId()); %></td>
                    <td><% out.print(list.get(num).getName()); %></td>
                    <td><% out.print(Long.valueOf(list.get(num).getCpf())); %></td>
                    <td><% out.print(Long.valueOf(list.get(num).getIdade())); %></td>
                    <td><button type="button" class="btn btn-info b"><%
                    		 out.print("<a href='frmlUpdateClient.jsp?id=" 
                                     + list.get(num).getId() 
                                     + "&nome=" + list.get(num).getName() 
                                     + "&cpf=" + list.get(num).getCpf() 
                                     + "&idade=" + list.get(num).getIdade() 
                                     + "'> Alterar </a>"
                         );
                    
                    %></button>
                        <button type="button" class="btn btn-danger b"><%
                        		out.print("<a href='frmlExcluirClient.jsp?id=" 
                                        + list.get(num).getId() 
                                        + "&nome=" + list.get(num).getName() 
                                        + "&cpf=" + list.get(num).getCpf() 
                                        + "&idade=" + list.get(num).getIdade() 
                                        + "'> Excluir </a>"
                            );
                        %></button>
                    </td>
                  </tr>
                  
            

          <%  
            }
            }catch(Exception e){
                out.print(e);
            }
        %>
            </tbody>
              </table>
        </div>
    </body>
</html>
