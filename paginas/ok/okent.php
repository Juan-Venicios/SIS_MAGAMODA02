<?php
include_once('../../conect/conect.php');
if(isset($_GET['ok_ent'])){
	$id = $_GET['ok_ent'];
	$update = "UPDATE tb_pedido SET ok_ent=:ok_ent WHERE id_pedido=:id";
	try{
        $result = $conect->prepare($update);
		$result->bindParam(':id',$id,PDO::PARAM_INT);
        $result->bindParam(':ok_ent',$ok_ent,PDO::PARAM_STR);		              
		$result->execute();
		$contar = $result->rowCount();
		if ($contar>0) {
			//header função de redirecionamento
			header("Location:../../home.php?acao=pedidoTAB");
		} else {
			header("Location:../../home.php?acao=pedidoTAB");
		}
		
	}catch(PDOException $e){
		echo "<b>ERRO DE DELETE: </b>".$e->getMessage();
	}
}