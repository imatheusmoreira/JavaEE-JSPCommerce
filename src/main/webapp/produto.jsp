<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Comprar</title>
</head>
<body style="background-color: #eff0f2">
	<div class="container">
		<div class="card">
			<div class="card-body">
				<h1 class="text-center">Finalizar compra</h1>
			</div>
			<a class="text-right btn-danger" href="Logout">SAIR</a>
		</div>
		<dl>
			<dt>Código</dt>
			<dd>${produto.codigo}</dd>
			<dt>Descrição</dt>
			<dd>${produto.descricao}</dd>
			<dt>Valor</dt>
			<dd>${produto.valor}</dd>
			<dt>Foto</dt>
			<dd>
				<img draggable="false" alt="Foto do produto" height="250"
					src="${produto.foto}" />
			</dd>
		</dl>
		<button type="button" onclick="javascript:history.back();" class="btn btn-danger">Voltar</button>
		<button type="button" onclick="javascript:window.location.href='sucesso'" class="btn btn-success">Comprar</button>
	</div>
</body>
</html>