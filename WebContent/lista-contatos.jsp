<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:import url="cabecalho.jsp" />

	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

	<table>
		<tr>
			<td>Nome</td>
			<td>Email</td>
			<td>Emdereco</td>
			<td>Data de Nascimento</td>
		</tr>

		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">

			<!-- Utilizando variável de status no c:forEach para colocar duas cores
			diferentes em linhas pares e ímpares -->
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff'}]">
				<td>${contato.nome}</td>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
					E-mail nao informado
					</c:if></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
			</tr>
		</c:forEach>
	</table>

	<c:import url="rodape.jsp" />
</body>
</html>