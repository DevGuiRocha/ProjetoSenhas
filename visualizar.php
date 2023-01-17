<?php
include_once "conexao.php";

	$query_visualiza = "SELECT senha_id FROM senhas_geradas ORDER BY created DESC limit 1";
	$result_visualiza = $conn->prepare($query_visualiza);

    $result_visualiza -> execute();
    $row_visualiza = $result_visualiza->fetch(PDO::FETCH_ASSOC);
    extract($row_visualiza);

    $query_retorna = "SELECT * FROM senhas WHERE id = $senha_id";
    $result_retorna = $conn->prepare($query_retorna);

    $result_retorna -> execute();
    $row_retorna = $result_retorna->fetch(PDO::FETCH_ASSOC);
    extract($row_retorna);
	
	if($result_retorna->execute()){
        $retorna = ['erro' => false, 'msg' => "<div class='alert alert-success' role='alert'>$nome_senha</div>"];
    }else{
        $retorna = ['erro' => true, 'msg' => "<div class='alert alert-danger' role='alert'>Senha chamada: </div>"];
    }

echo json_encode($retorna);

?>