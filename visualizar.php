<?php
include_once "conexao.php";

	$query_visualiza = "SELECT nome_senha FROM senhas WHERE sits_senha_id = 2 ORDER BY id DESC limit 1";
	$result_visualiza = $conn->prepare($query_visualiza);

	
	if($result_visualiza->execute()){
        $retorna = ['erro' => false, 'msg' => "<div class='alert alert-success' role='alert'>Senha chamada: $result_visualiza</div>"];
    }else{
        $retorna = ['erro' => true, 'msg' => "<div class='alert alert-danger' role='alert'>Senha chamada: $result_visualiza</div>"];
    }

echo json_encode($retorna);

?>