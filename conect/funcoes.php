<?php
function fnModeloCad($Dados) {
        $nome_modelo = $_POST['nome_modelo'];
        $codigo_modelo = $_POST['codigo_modelo'];
        $desc_modelo = $_POST['desc_modelo'];
        $tamPP = $_POST['tamPP'];
        $tamP = $_POST['tamP'];
        $tamM = $_POST['tamM'];
        $tamG = $_POST['tamG'];
        $tamGG = $_POST['tamGG'];
        $preco_modelo = $_POST['preco_modelo'];
        $total_modelo = $tamPP+$tamP+$tamM+$tamG+$tamGG;

        $formatosPermitidos = array("png","jpeg","jpg","gif");
        $extensao = pathinfo($_FILES['img_modelo']['name'],PATHINFO_EXTENSION);
        if(in_array($extensao, $formatosPermitidos)):
        //echo "Existe a extenção .{$extensao}";
        $pasta = "img/";
        $temporario = $_FILES['img_modelo']['tmp_name'];
        $novoNome = uniqid().".{$extensao}";

if (move_uploaded_file($temporario, $pasta.$novoNome)) {
    $cadastro = "INSERT INTO tb_modelo (nome_modelo,img_modelo,codigo_modelo,desc_modelo,tamPP,tamP,tamM,tamG,tamGG,preco_modelo,total_modelo)
VALUES (:nome_modelo,:img_modelo,:codigo_modelo,:desc_modelo,:tamPP,:tamP,:tamM,:tamG,:tamGG,:preco_modelo,:total_modelo)";

    try{
$result = $conect->prepare($cadastro);
$result->bindParam(':nome_modelo',$nome_modelo,PDO::PARAM_STR);
$result->bindParam(':img_modelo',$novoNome,PDO::PARAM_STR);
$result->bindParam(':codigo_modelo',$codigo_modelo,PDO::PARAM_STR);
$result->bindParam(':desc_modelo',$desc_modelo,PDO::PARAM_STR);
$result->bindParam(':tamPP',$tamPP,PDO::PARAM_INT);
$result->bindParam(':tamP',$tamP,PDO::PARAM_INT);
        $result->bindParam(':tamM',$tamM,PDO::PARAM_INT);			              
$result->bindParam(':tamG',$tamG,PDO::PARAM_INT);
$result->bindParam(':tamGG',$tamGG,PDO::PARAM_INT);
$result->bindParam(':preco_modelo',$preco_modelo,PDO::PARAM_STR);
$result->bindParam(':total_modelo',$total_modelo,PDO::PARAM_INT);
        $result->execute();

        $contar = $result->rowCount();
        if($contar>0){
            echo '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">×</button><strong>CADASTRADO COM SUCESSO!</strong></div>';
            
        }else{
            echo 'Dados não cadastrados!';
   
        }
    }catch(PDOException $e){
        echo "<b>ERRO DE PDO= </b>".$e->getMessage();
    }
//$mensagem = "Upload feito com sucesso!";
}else{
$mensagem = "Erro, não foi possivel fazer o upload do arquivo!";
}
else:
echo  "Formato inválido";
endif;
//var_dump($_FILES);
}
 
}
function fnModeloList($Campos, $Criterios, $Local) {
  // Criar a função para carregar a lista modelos dependo da consulta critérios ou campos
}