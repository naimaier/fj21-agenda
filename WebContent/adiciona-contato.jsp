<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<link href="resources/css/jquery-ui.css" rel="stylesheet">
<link href="resources/css/jquery-ui.structure.css" rel="stylesheet">
<link href="resources/css/jquery-ui.theme.css" rel="stylesheet">
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato">
		Nome: <input type="text" name="nome" /><br />
		E-mail: <input type="text" name="email" /><br />
		Endereço: <input type="text" name="endereco" /><br />
		
		<!-- Campo criado com taglib -->
		Data Nascimento: <caelum:campoData id="dataNascimento" /> <br />
		<input type="submit" value="Gravar" />
		
	</form>
	<c:import url="rodape.jsp" />
</body>
</html>