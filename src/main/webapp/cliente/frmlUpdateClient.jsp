<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
   
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Home - Editar Clientes</title>
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
    <span class="navbar-brand mb-0 h1">Editar Clientes</span>
    <span class="navbar-brand mb-0 h1"><button type="button" class="btn btn-info"><a href="../index.html">Menu</a></button></span>
  </div>
</nav>
<br><br><br>

<div class="container-xl card">
  <!-- Content here -->
<form action="atualizarClient.jsp" method="POST">
<div class="col-md-8 card-body">
  <div class="mb-3">
   <!-- <label for="exampleInputEmail1" class="form-label">Cï¿½digo Cliente:</label>-->
  <!--   <input type="text" class="form-control" name="id" value="" disabled> -->
    <input type="hidden" class="form-control" name="id" value="<%=request.getParameter("id")%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nome:</label>
    <input type="text" class="form-control" name="nome" value="<%=request.getParameter("nome")%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">CPF:</label>
    <input type="number" class="form-control" name="cpf" value="<%=request.getParameter("cpf")%>">
  </div>
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Idade:</label>
    <input type="number" class="form-control" name="idade" value="<%=request.getParameter("idade")%>">
  </div>

  <button type="submit" class="btn btn-info b">Alterar</button>
</form>
</div>
</div>

</body>
</html>
