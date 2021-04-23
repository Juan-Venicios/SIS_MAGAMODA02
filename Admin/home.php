<?php
	include_once('includes/header.php');
    if (isset($_GET['acao'])){
		$acao = $_GET['acao'];
		if ($acao == 'bemvindo'){
			include_once('paginas/principal.php');
		}
		if ($acao == 'principal'){
			include_once('paginas/principal.php');
		} elseif($acao == 'perfil'){
			include_once('profile.php');
		} elseif($acao == 'relatorio'){
			include_once('paginas/relatorio.php');
		} elseif($acao == 'configuracao'){
			include_once('paginas/configuracao.php');
		}elseif($acao == 'modelo'){
			include_once('paginas/update/updateModelo.php');
		}elseif($acao == 'vismodelo'){
			include_once('paginas/visualizarModelo.php');
		}elseif($acao == 'vispedido'){
			include_once('paginas/visualizarPedido.php');
		} elseif($acao == 'funcionario'){
			include_once('paginas/funcionário.php');
		} elseif($acao == 'clientenovo'){
			include_once('paginas/clientenovo.php');
		}elseif($acao == 'funcionarioTAB'){
			include_once('paginas/funcioTAB.php');
		}elseif($acao == 'clienteTAB'){
			include_once('paginas/cliente.php');
		}elseif($acao == 'adminTAB'){
			include_once('paginas/adminTAB.php');
		}elseif($acao == 'modeloTAB'){
			include_once('paginas/modeloTAB.php');
		}elseif($acao == 'modeloCad'){
			include_once('paginas/modelo.php');
		}elseif($acao == 'fases'){
			include_once('paginas/controFases.php');
		}elseif($acao == 'costureira'){
			include_once('paginas/updateCostureira.php');
		}elseif($acao == 'pedido'){
			include_once('paginas/update/updatePedido.php');
		}elseif($acao == 'cliente'){
			include_once('paginas/update/updateCliente.php');
		}elseif($acao == 'viscostureira'){
			include_once('paginas/visualizarCostureira.php');
		}elseif($acao == 'viscliente'){
			include_once('paginas/visualizarCliente.php');
		}elseif($acao == 'pedidoTAB'){
			include_once('paginas/pedidoTAB.php');
		}elseif($acao == 'obspedido'){
			include_once('paginas/obsTAB.php');
		}elseif($acao == 'obs'){
			include_once('paginas/update/updateObs.php');
		}elseif($acao == 'obsCad'){
			include_once('paginas/obspedido.php');
		}elseif($acao == 'pedidoCad'){
			include_once('paginas/pedido.php');
		}elseif($acao == 'teste'){
			include_once('teste.php');
		};


        };
   include_once('includes/rodape.php');
   if ($acao == 'bemvindo'){
	include_once('./paginas/welcome.php');
   }

   
   
    ?>
	