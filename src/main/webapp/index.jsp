<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>TJW Commerce</title>
</head>
<body style="background-color: #eff0f2">
	<div>
		<h1 align="center">TJW Commerce</h1>
	</div>
	<form action="CheckCredentials" method="post" name="form_loginmail">
		<p>&nbsp;</p>
		<table width="230" border="0" align="center">
			<tr>
				<td width="70">Usuário:</td>
				<td width="144"><input type="text" name="nomeUsuario"></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="senhaUsuario"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><button type="submit" class="btn btn-success" name="button" id="button">Entrar</button></td>
			</tr>
		</table>
		<p>&nbsp;</p>
	</form>
</body>
</html>
