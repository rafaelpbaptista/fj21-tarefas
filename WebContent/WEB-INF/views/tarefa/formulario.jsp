<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Adicionar Tarefa</title>
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
	</head>
	<body>
		<h3>Nova tarefas</h3>
	
		<form:errors path="tarefa.descricao" /><br />
	
		<form action="adicionaTarefa" method="post">
			Descrição: <br />
			<textarea rows="5" cols="100" name="descricao"></textarea>
			<br /> <input type="submit" value="Adicionar">
		</form>
	</body>
</html>