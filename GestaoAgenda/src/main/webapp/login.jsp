<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div id="container">
		<h1>Login</h1>
		<br>

		<form action="login.jsp" method="post" class="login">
			<label class="login">Usuário</label><br> 
			<input type="text" name="usuario" class="Caixa1"><br>
			
			<label class="login"> Senha</label><br> 
			<input type="password" name="senha" class="Caixa1"><br> <br> <input type="submit"
				value="Login" class="Botao1">
		</form>
		<h3>
			<%
			String usuario = request.getParameter("usuario");
			String senha = request.getParameter("senha");

			if (usuario != null && senha != null && !usuario.isEmpty() && !senha.isEmpty()) {
				if (usuario.equals("admin") && senha.equals("admin123")) {
					HttpSession sessao = request.getSession(false);
					if (session != null) {
				session.invalidate();
					}
					session = request.getSession(true);
					session.setAttribute("usuario", usuario);
					response.sendRedirect("index.jsp");
				} else {
					out.print("USUÁRIO NÃO CADASTRADO ENTRE EM CONTATO COM SUPERVISOR");
				}
			}
			%>
		</h3>
	</div>
</body>
</html>