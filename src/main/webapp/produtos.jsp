<%@page import="br.edu.ifce.bean.Produto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Produtos</title>
</head>
<body style="background-color: #eff0f2">
	<div class="container">
		<div class="card">
			<div class="card-body">
				<h1 class="text-center">Bem-vindo ao TJW Commerce</h1>
			</div>
			<a class="text-right btn-danger" href="Logout">SAIR</a>
		</div>
		<p>
		<div class="alert alert-success" role="alert">Clique em comprar
			para comprar um produto</div>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Código</th>
					<th scope="col">Descrição</th>
					<th scope="col">R$ Valor</th>
					<th scope="col">Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td>${produto.codigo}</td>
						<td>${produto.descricao}</td>
						<td>${produto.valor}</td>
						<td><a href="produto?codigo=${produto.codigo}">Comprar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>