<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
		<title>Projeto fj21-tarefas</title>
	</head>
<body>
	<script type="text/javascript">
		function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id}, function(resposta) {
				$("#tarefa_"+id).html(resposta);
			});
		}
		
		function removeAgora(id) {
			$.post("removeTarefa", {'id' : id}, function() {
				$("#tarefa_"+id).hide();
			})
		}
	</script>
	<a href="novaTarefa">Criar nova tarefa</a>
	<br />
	<br />
	<table>
		<tr>
			<th>Id</th>
			<th>Descri��o</th>
			<th>Finalizado</th>
			<th>Data de finaliza��o</th>
			<th></th>
			<th></th>
			<th>Ajax</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">

				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td>
						<a href="#" onclick="finalizaAgora(${tarefa.id})">Finaliza agora!</a>
					</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizada</td>
				</c:if>
				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
				<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
				<td><a href="#" onclick="removeAgora(${tarefa.id})"><img src="<c:url value="/resources/img/botaoexcluir.png"/>" /></a>
			</tr>
		</c:forEach>
	</table>
</body>
</html>