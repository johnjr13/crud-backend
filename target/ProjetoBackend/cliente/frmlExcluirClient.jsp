<%-- 
    Document   : listarClient
    Created on : 24 de fev. de 2023, 01:00:49
    Author     : John Junior
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.empresa.DTO.ClientDTO"%>
<%@page import="br.com.empresa.DAO.ClientDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Home - Excluir Clientes</title>
  </head>
  <body>s
    
    <nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1">Excluir Clientes</span>
  </div>
</nav>
<br><br><br>

<div class="container-xl card">
  <!-- Content here -->
<form action="deletarClient.jsp" method="POST">
<div class="col-md-8 card-body">
  <div class="mb-3">
   <!-- <label for="exampleInputEmail1" class="form-label">Código Cliente:</label>-->
  <!--   <input type="text" class="form-control" name="id" value="" disabled> -->
    <input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nome:</label>
    <input type="text" class="form-control" name="name" value="<%=request.getParameter("nome")%>" disabled>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">CPF:</label>
    <input type="number" class="form-control" name="cpf" value="<%=request.getParameter("cpf")%>" disabled>
  </div>
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Idade:</label>
    <input type="number" class="form-control" name="idade" value="<%=request.getParameter("idade")%>" disabled >
  </div>

  <button type="submit" class="btn btn-primary">Excluir</button>
</form>
</div>
</div>


