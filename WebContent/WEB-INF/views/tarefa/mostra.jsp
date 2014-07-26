<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<html>
<head>
	<link type="text/css" href="resources/css/jquery.css"
		rel="stylesheet" />
	<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
</head>
<body>
	<h3>Altera tarefa - ${tarefa.id}</h3>

	<form action="alteraTarefa">
		
		<input type="hidden" name="id" value="${tarefa.id}" />
		
		Descrição: <br />
		<textarea rows="5" cols="100" name="descricao">${tarefa.descricao}</textarea>
		<br />
		
		Finalizado? <input type="checkbox" name="finalizado"
			value="true" ${tarefa.finalizado? 'checked' : '' } /><br />
		
		Data de	finalização:
		<caelum:campoData id="dataFinalizacao" nome="dataFinalizacao"
			valor="${tarefa.dataFinalizacao.time}" />
		<br />
		
		<input type="submit" value="Alterar" />
	</form>
</body>
</html>