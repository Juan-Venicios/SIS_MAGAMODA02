<?php
	include_once('includes/header.php');

    if (isset($_GET['acao'])) {
		$acao = $_GET['acao'];
		if ($acao == 'bemvindo'){
			
			include_once('paginas/principal.php');
			

		}	if ($acao == 'principal'){
			
			include_once('paginas/principal.php');
			

		}
		elseif ($acao == 'limpeza') {
	    include_once('paginas/limpeza.php');
		}  elseif($acao == 'perfil'){
			include_once('paginas/profile.php');
		} elseif($acao == 'relatorio'){
			include_once('relatorio.php');
		} elseif($acao == 'modelo'){
			include_once('paginas/update/updateModelo.php');
		}elseif($acao == 'vismodelo'){
			include_once('paginas/visualizarModelo.php');
		}elseif($acao == 'confirmar'){
			include_once('paginas/confirmar.php');
		}elseif($acao == 'vispedido'){
			include_once('paginas/visualizarPedido.php');
		}elseif($acao == 'modeloTAB'){
			include_once('paginas/modeloTAB.php');
		}elseif($acao == 'modeloCad'){
			include_once('paginas/modelo.php');
		}elseif($acao == 'costureira'){
			include_once('paginas/update/updateCostureira.php');
		}elseif($acao == 'pedido'){
			include_once('paginas/update/updatePedido.php');
		}elseif($acao == 'viscostureira'){
			include_once('paginas/visualizarCostureira.php');
		}elseif($acao == 'pedidoTAB'){
			include_once('paginas/pedidoTAB.php');
		}elseif($acao == 'obspedido'){
			include_once('paginas/obsTAB.php');
		}elseif($acao == 'obsCad'){
			include_once('paginas/obspedido.php');
		}
		elseif($acao == 'pedidoCad'){
			include_once('paginas/pedido.php');
		};


        };
   include_once('includes/rodape.php');
   
   if ($acao == 'bemvindo'){
	include_once('paginas/welcome.php');
   }

   
   
    ?>
	