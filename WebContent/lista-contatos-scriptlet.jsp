<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.*,
	java.text.*,
	br.com.caelum.jdbc.dao.*,
	br.com.caelum.jdbc.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			%>
			<tr>
			<td>Nome</td>
			<td>Email</td>
			<td>Endereco</td>
			<td>Data de Nascimento</td>
			</tr>
			<%

			for (Contato contato : contatos) {
				String data = new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime());
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=data%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>