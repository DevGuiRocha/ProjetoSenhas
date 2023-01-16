<?php
include_once "conexao.php";

    $query_usuario = "DELETE FROM senhas_geradas";
	$query_altera = "ALTER TABLE senhas_geradas AUTO_INCREMENT = 1";
	$query_update = "UPDATE senhas set sits_senha_id = 1";
	$query_visualiza = "SELECT MAX(ID) FROM senhas_geradas";
    $result_usuario = $conn->prepare($query_usuario);
	$result_altera = $conn->prepare($query_altera);
	$result_update = $conn->prepare($query_update);
	$result_visualiza = $conn->prepare($query_visualiza);


    if($result_usuario->execute()){
        $retorna = ['erro' => false, 'msg' => "<div class='alert alert-success' role='alert'>Senhas reiniciadas com sucesso!</div>"];
    }else{
        $retorna = ['erro' => true, 'msg' => "<div class='alert alert-danger' role='alert'>Erro: Usuário não apagado com sucesso!</div>"];
    }
	
	if($result_altera->execute()){
        $retorna = ['erro' => false, 'msg' => "<div class='alert alert-success' role='alert'>Senhas reiniciadas com sucesso!</div>"];
    }else{
        $retorna = ['erro' => true, 'msg' => "<div class='alert alert-danger' role='alert'>Erro: Usuário não apagado com sucesso!</div>"];
    }
	
	if($result_update->execute()){
        $retorna = ['erro' => false, 'msg' => "<div class='alert alert-success' role='alert'>Senhas reiniciadas com sucesso!</div>"];
    }else{
        $retorna = ['erro' => true, 'msg' => "<div class='alert alert-danger' role='alert'>Erro: Usuário não apagado com sucesso!</div>"];
    }
	
	if($result_visualiza->execute()){
        $retorna = ['erro' => false, 'msg' => "<div class='alert alert-success' role='alert'>Senhas reiniciadas com sucesso!</div>"];
    }else{
        $retorna = ['erro' => true, 'msg' => "<div class='alert alert-danger' role='alert'>Erro: Usuário não apagado com sucesso!</div>"];
    }

    echo json_encode($retorna);

?>