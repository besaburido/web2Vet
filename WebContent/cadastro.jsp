<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Cadastre-se</title>
	<!-- icon de patinhas l� de cima -->
	<link rel=" icon" href="bootstrap/favicon.ico"  type="image/x-icon">
	<link rel=" shortcut icon" href="bootstrap/favicon.ico"  type="image/x-icon">
	<!-- Bootstrap CSS / N�O PODE MUDAR ISSO, BIA -->
	<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Obs.: baixar fontawesome e mudar isso dps-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">	
	<!-- Nossas coisinhas aqui -->
	<link href="css/cover.css" rel="stylesheet">
	<link href="css/cadastro.css" rel="stylesheet">
</head>
<body class="text-center ">
	<%@include file="headerInicial.jsp"%>
	 <div class="container">
        <div class="d-flex justify-content-center h-100">
          <div class="card">
            <div class="card-header">
              <h3>Cadastre-se</h3>              
            </div>
            <div class="card-body">
              <form>
                <div class="input-group form-group">
                  <input type="text" class="form-control" placeholder=" Nome">
                  <input type="text" class="form-control" placeholder=" Sobrenome">                  
                </div>
                <div class="input-group form-group">
                  <input type="text" class="form-control" placeholder=" Matr�cula">
                  <input type="text" class="form-control" placeholder=" CPF">                  
                </div>
                <label>Data de nascimento:</label>
                <div class="input-group form-group">
                  <input type="date" class="form-control" placeholder=" Data de nascimento">                  
                </div>
                <div class="input-group form-group">
                  <input type="email" class="form-control" placeholder=" Email">                  
                </div>
                <div class="input-group form-group">
                  <input type="password" class="form-control" placeholder="Senha">
                </div>
                <div class="input-group form-group">
                  <input type="password" class="form-control" placeholder="Confirme sua senha">
                </div>
                <div class="form-group">
                  <label for="prof_aluno">Selecione uma op��o</label>
                  <select class="form-control" id="prof_aluno">
                    <option></option>
                    <option>Sou aluno</option>
                    <option>Sou professor</option>
                  </select>
                </div>
                <br><br>
                <div class="form-group">
                  <input type="submit" value="Cadastrar" class="btn btn-lg btn btn-dark">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
	  <br><br><br><br>
	<div>
		<%@include file="footer.jsp"%>	
	</div>
	
	
	
	
	
	
	<!-- Bootstrap  JavaScript aqui -->
    <!-- Obs.: a gente bota aqui em baixo pra carregar mais r�pido -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="bootstrap/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="bootstrap/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>
</body>
</html>