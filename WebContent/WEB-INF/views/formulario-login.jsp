<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Controle de Tarefas</title>
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
		<link href="resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
	</head>
	<body>
		<div class="container">
			<form action="efetuaLogin" method="post" class="form-horizontal">
				<fieldset>
					<legend>P&aacute;gina de Login</legend>
				<div class="control-group">
					<label class="control-label" for="inputLogin">Login</label>
					<div class="controls controls-row">
						<input class="input-xlarge" type="text" id="inputLogin" name="login" placeholder="Usu&aacute;rio"/>
					</div>
				</div> 
				<div class="control-group">
					<label class="control-label" for="inputPassword">Senha</label>
					<div class="controls controls-row">
						<input class="input-xlarge" type="password" id="inputPassword" name="senha" placeholder="Senha"/>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<button type="submit" class="btn btn-large btn-success">Entrar</button>
					</div>
				</div>
				</fieldset>
			</form>
		</div>
		<script src="resources/js/bootstrap.min.js"></script>
	</body>
</html>