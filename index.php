<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />
	
	<!-- Style -->	
    <link rel="stylesheet" href="css/style.css">
	
	<div class="img">
	<img src="img/logo.png" alt="some text">
	</div>
	
    <title>Senha de Atendimento</title>
</head>

<body>

    <!-- Receber a mensagem de erro do JavaScript -->
    <span id="msgAlerta"></span>

    <div class="senha">
	<!-- Receber a senha do JavaScript -->
    <p class="senha">Senha</br> 
	<span id="senhaGerada"></span></p>
	</div>

	
	<footer class="fixar-rodape">    
	<!-- Chamar a funcao "gerarSenha" do JavaScript para gerar senha para atendimento convencional -->
    <p><button type="button" onclick="gerarSenha(1)">Convencional</button></p>

    <!-- Chamar a funcao "gerarSenha" do JavaScript para gerar senha para atendimento preferencial -->
    <p><button type="button" onclick="gerarSenha(2)">Preferencial</button></p>
	
	<p><button id='$id' class='btn btn-outline-danger btn-sm' onclick='visualizar($id)'>Visualizar</button></p>

	
	<p><button id='$id' class='btn btn-outline-danger btn-sm' onclick='apagarUsuarioDados($id)'>Apagar</button></p>
	
	<script src="js/custom.js"></script>
	
</footer>
	
</body>

</html>