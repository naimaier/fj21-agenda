<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- comentario em JSP aqui: nossa primeira pagina JSP --%>
	<%
		String mensagem = "Bem vindo ao sistema de agenda do fj-21!";
	%>
	<% out.println(mensagem); %>
	
	<br />
	
	<%
		String desenvolvido = "Desenvolvido por Henrique Naimaier";
	%>
	<%= desenvolvido %>
	
	<br />
	
	<%
		System.out.println("Tudo foi executado!");
	%>
</body>
</html>