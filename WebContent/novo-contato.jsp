<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Novo Contato</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<link href="resources/css/jquery-ui.css" rel="stylesheet">
<link href="resources/css/jquery-ui.structure.css" rel="stylesheet">
<link href="resources/css/jquery-ui.theme.css" rel="stylesheet">
</head>
<body>
	<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
	<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" var="formattedDate"/>
	
	<h3>Novo Contato</h3>
	<form action="mvc">
		<input type="hidden" name="logica" value="AdicionaContatoLogic">
		Nome: <input type="text" name="nome" value="${contato.nome}"><br/>
		Endereco: <input type="text" name="endereco" value="${contato.endereco}"><br/>
		Email: <input type="text" name="email" value="${contato.email}"><br/>
		Data de Nascimento: <caelum:campoData id="dataNascimento" value="${formattedDate}"/><br/>
		<input type="submit" value="Gravar">
	</form>

	<c:import url="/WEB-INF/jsp/rodape.jsp" />
</body>
</html>