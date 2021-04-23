
<body>
    
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->


     <?php
            $select = "SELECT * FROM tb_cliente WHERE id_cliente=:id";

            try{
              $resultado = $conect->prepare($select);
                $resultado->bindParam(':id',$id,PDO::PARAM_INT);
                $resultado->execute();
                //CONTA REGISTRO
                $contar = $resultado->rowCount();
                if($contar > 0){
                   while ($show = $resultado->FETCH(PDO::FETCH_OBJ)) {
                        $id_cliente = $show->id_cliente;
                        $nome_cliente = $show->nome_cliente;
                        $uf_cliente = $show->uf_cliente;
                        $cidade_cliente = $show->cidade_cliente;
                        $bairro_cliente = $show->bairro_cliente;
                        $cep_cliente = $show->cep_cliente;
                        $rua_cliente = $show->rua_cliente;
                        $email_cliente = $show->email_cliente;
                        $senha_cliente = $show->senha_cliente;
                        $cpf_cliente = $show->cpf_cliente;
                        $telefone_cliente = $show->telefone_cliente;
                        $status = $show->status;

                  }
                }else{
                  echo '<div class="alert alert-danger"> <strong>Aviso!</strong> Não há dados com o id(parametro) informado :( </div>';
                }
            }catch(PDOException $e){
                echo "<b>ERRO DE PDO NO SELECT: </b>".$e->getMessage();
            }
        ?>


    <section  id="main-content">
      <section class="wrapper">
        <div class="row mt">
          <div class="col-lg-12">
            <div class="row content-panel">
              <div class="col-md-6 profile-text mt mb centered">
                <div class="right-divider hidden-sm hidden-xs">
                  <h4>E-mail</h4>
                  <h6><?php echo $email_cliente; ?></h6>

                  <h4>Telefone</h4>
                  <h6><?php echo $telefone_cliente; ?>"</h6>
                  <h4>
                    

  <!-- <?php           
      
      if($status==0){
        echo 'Acesso negado';
      }elseif ($status == 1) {
        echo 'Diretor';
      }elseif ($status == 2) {
        echo 'Coordenador(a)';
      }elseif ($status == 3) {
        echo 'Secretario(a)';
      }
      else{
        echo 'Administrador';
      }
    ?> -->


                  </h4>
                 <!--  <h6>Função</h6> -->
                </div>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-6 profile-text">
                <h3><?php echo $nome_cliente; ?></h3>
                <h6>
                  
                    <?php           

      if($status==0|1|2|3){
        echo 'Usuário comum';
      }
      else{
        echo 'Administrador principal';
      }
    ?>

                </h6>
                <p>Gerencie este sistema com responsabilidade, lembre-se do seu dever com a Marca Magalhães.</p>
                <br>
              </div>
              <!-- /col-md-4 -->
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
          </div>
          <!-- /col-lg-12 -->









          <div class="col-lg-12 mt">
            <div class="row content-panel">  
                  <div  >
                    <div class="row">
                      <div class="col-lg-12 detailed">
                       

    
      <form action="" method="post" enctype="multipart/form-data" id="form_NovoPerfil">
       
       <h4 class="mb">Editar informações</h4>

                      <div class="col-lg-6" style="margin-left: 25%; ">

  
  
                       <div class="rom">
                       <div class="col-lg-12">
                       <div class="form-group ">
                            <label class="control-label">Nome</label>                    
                            <input  type="text"  value="<?php echo $nome_cliente; ?>" lenght="10"  name="nome_cliente" id="nome_cliente" class="form-control">
                       </div>
                       <div class="form-group">
                            <label class="control-label">Endereço:</label>     
                       </div>
                       </div>
                       </div>
                        
                       <div class="rom">
                       <div class="col-lg-6">
                       <div class="form-group">
                            <label class="control-label">UF:</label>
                            <select name="uf_cliente" id="uf_cliente" class="form-control">
                                 <option value="<?php echo $uf_cliente; ?>" disabled="" selected="">Estado</option>
                                 <option value="acre">AC</option>
                                 <option value="alagoas">AL</option>
                                 <option value="amapa">AP</option>
                                 <option value="amazonas">AM</option>
                                 <option value="bahia">BA</option>
                                 <option value="ceara">CE</option>
                                 <option value="df">DF</option>
                                 <option value="es">ES</option>
                                 <option value="goias">GO</option>
                                 <option value="maranhao">MA</option>
                                 <option value="matog">MT</option>
                                 <option value="matogs">MS</option>
                                 <option value="minasg">MG</option>
                                 <option value="para">PA</option>
                                 <option value="paraiba">PB</option>
                                 <option value="parana">PR</option>
                                 <option value="pernambuco">PE</option>
                                 <option value="piaui">PI</option>
                                 <option value="riodej">RJ</option>
                                 <option value="riogdon">RN</option>
                                 <option value="riogdos">RS</option>
                                 <option value="rondonia">RO</option>
                                 <option value="roraima">RR</option>
                                 <option value="santac">SC</option>
                                 <option value="saopaulo">SP</option>
                                 <option value="sergipe">SE</option>
                                 <option value="tocantins">TO</option>
                            </select>
                       </div>
                       <div class="form-group">
                            <label class="control-label">Cidade:</label>
                            <input type="text" value="<?php echo $cidade_cliente; ?>" name="cidade_cliente" id="cidade_cliente" class="form-control">
                       </div>
                       </div>
                       </div>

                       <div class="rom">
                       <div class="col-lg-6">
                       <div class="form-group">
                            <label class="control-label">Bairro:</label>
                            <input type="text" value="<?php echo $bairro_cliente; ?>" name="bairro_cliente" id="bairro_cliente" class="form-control">
                       </div>
                       <div class="form-group">
                            <label class="control-label">CEP:</label>
                            <input type="text" value="<?php echo $cep_cliente; ?>" name="cep_cliente" id="cep_cliente" class="form-control">
                       </div>
                       </div>
                       </div>
                       
                       <div class="rom">
                       <div class="col-lg-12">
                       <div class="form-group">
                            <label class="control-label">Rua:</label>
                            <input type="text" value="<?php echo $rua_cliente; ?>" name="rua_cliente" id="rua_cliente" class="form-control">
                       </div>
                       </div>
                       </div>
                       
                       <div class="rom">
                       <div class="col-lg-6">
                       <div class="form-group">
                            <label class="control-label">Telefone:</label>cliente
                            <input type="text" value="<?php echo $telefone_cliente; ?>" name="telefone_cliente" class="form-control">
                       </div>
                       <div class="form-group">
                              <label class="control-label">E-mail</label>
                              <input name="email_cliente" value="<?php echo $email_cliente; ?>" id="email_cliente" type="email" class="form-control">
                       </div>
                       </div>
                       </div>

                       <div class="rom">
                       <div class="col-lg-6">
                       <div class="form-group">
                            <label class="control-label">CPF:</label>
                            <input type="text" value="<?php echo $cpf_cliente; ?>" name="cpf_cliente" id="cpf_cliente" class="form-control">
                       </div>
                       <div class="form-group">
                            <label class="control-label">Senha</label>
                            <input type="text" value="<?php echo base64_decode($senha_cliente); ?>" name="senha_cliente" id="senha_cliente" class="form-control">
                       </div>
                       </div>
                       </div>
          
 <div class="rom">
 <div class="col-lg-12">
    <button type="submit" class="btn btn-theme " name="botaoAtualizar" ><i></i>Atualizar</button>
    <hr>
 </div> 
 </div>
          

            </div>
</div>

      </form>
                      </div>
                      <!-- /col-lg-8 -->





<?php


if(!isset($_GET['upperfil'])){
            header("Location: home.php");
            exit;
          }
          $id = $_GET['upperfil'];
      if(isset($_POST['botaoAtualizar'])) {
                                $nome_cliente = trim(strip_tags($_POST['nome_cliente']));
                                $uf_cliente = trim(strip_tags($_POST['uf_cliente']));
                                $cidade_cliente = trim(strip_tags($_POST['cidade_cliente']));
                                $bairro_cliente = trim(strip_tags($_POST['bairro_cliente']));
                                $cep_cliente = trim(strip_tags($_POST['cep_cliente']));
                                $rua_cliente = trim(strip_tags($_POST['rua_cliente']));
                                $email_cliente = trim(strip_tags($_POST['email_cliente']));
                                $senha_cliente = trim(strip_tags(base64_encode($_POST['senha_cliente'])));
                                $cpf_cliente = trim(strip_tags($_POST['cpf_cliente']));
                                $telefone_cliente = trim(strip_tags($_POST['telefone_cliente']));
                                $update = "UPDATE tb_cliente SET nome_cliente=:nome_cliente,uf_cliente=:uf_cliente,cidade_cliente=:cidade_cliente,bairro_cliente=:bairro_cliente,cep_cliente=:cep_cliente,rua_cliente=:rua_cliente,email_cliente=:email_cliente,senha_cliente=:senha_cliente,cpf_cliente=:cpf_cliente,telefone_cliente=:telefone_cliente WHERE id_cost=:id";
                                try{
                                    $result = $conect->prepare($update);
                                    $result-> bindParam(':id',$id,PDO::PARAM_INT);
                                    $result-> bindParam(':nome_cliente',$nome_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':uf_cliente',$uf_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':cidade_cliente',$cidade_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':bairro_cliente',$bairro_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':cep_cliente',$cep_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':rua_cliente',$rua_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':email_cliente',$email_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':senha_cliente',$senha_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':cpf_cliente',$cpf_cliente,PDO::PARAM_STR);
                                    $result-> bindParam(':telefone_cliente',$telefone_cliente,PDO::PARAM_STR);
                                    $result-> execute();
                                    $contar = $result-> rowCount();
                                    if($contar > 0){
                                        echo '<div class="alert alert-success" role="alert">Dados cadastrados com sucesso!</div>'; 
                                        header("Refresh: 4, ?sair");
                                    }else{ 
                                        echo '<div class="alert alert-danger" role="alert">Dados não cadastrados!</div>';;
                                    }
                                }catch(PDOException $e){
                                    echo "<b>ERRO DE PDO = </b>".$e->getMessage();
                                }
          }
        ?>

                    
                  </div>
                  </div>
                 </div>
                    <!-- /row -->
                  </div>
                 


      </section>
      <!-- /wrapper -->
 




