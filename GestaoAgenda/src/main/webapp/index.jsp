<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="imagens/fone.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div id="container">
		<h3>
			<%
			String usuario = (String) session.getAttribute("usuario");
			if (usuario == null) {
				response.sendRedirect("login.jsp");
			} else {
				out.print("Bem vindo ");
			}
			%>
		</h3>
		<img src="imagens/agenda.png">
		<h1>Agenda de Contatos</h1>
		<a href="main" class="Botao1">Acessar</a> <a href="deslogar.jsp"
			class="Botao1">Sair</a>
	</div>
</body>
</html>