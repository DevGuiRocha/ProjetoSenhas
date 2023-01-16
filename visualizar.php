<?php
include_once "conexao.php";

	$query_visualiza = "SELECT * FROM senhas WHERE sits_senha_id = 2 ORDER BY id DESC limit 1";
	$result_visualiza = $conn->prepare($query_visualiza);

    $result_visualiza -> execute();
    $row_visualiza = $result_visualiza->fetch(PDO::FETCH_ASSOC);
    extract($row_visualiza);
	
	if($result_visualiza->execute()){
        $retorna = ['erro' => false, 'msg' => "<div class='alert alert-success' role='alert'>$nome_senha</div>"];
    }else{
        $retorna = ['erro' => true, 'msg' => "<div class='alert alert-danger' role='alert'>Senha chamada: </div>"];
    }

echo json_encode($retorna);

?>