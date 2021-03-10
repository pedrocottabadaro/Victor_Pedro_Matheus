<?php

require('../../model/exercicio/exercicio.php');
require('../../database/connection.php');

$exercicios = new Exercicio;
$resposta = $exercicios->getResposta($_GET['ex']);
$exercicio = $exercicios->getExercicio($_GET['ex']);
$alternativas = $exercicios->getAlternativas($_GET['ex']);
$voltar = ($_GET['ex'] == 1) ? "disabled" : "";
$avancar = $exercicios->verificaNav($_GET['ex']);

// echo '<pre>';
// print_r($alternativas);
// echo '</pre>';

?>

<!DOCTYPE html>
<html lang="pt-Br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="exercicioSelecionado.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <title>Exercício</title>
</head>
<body>
    <div class="container">

        <div id="containerDropdown">
            <div class="dropdown">
                <img src="../../extra/menu.png" class="dropbtn" onclick="openNav()" alt="logout">
                <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <a href="../apostila/apostila.html">Apostila</a>
                    <a href="../modulo/modulo.php">Módulos</a>
                    <a href="../info/tela-info-user.php">Alterar informações</a>
                </div>
            </div> 

            

            
            <div class="imageLogout">
                <img src="../../extra/logout-button.png" onclick="sair()" alt="logout">
            </div>             
        </div>

        <div class="enunciado">
            <p>
                <?= $exercicio['ENUNCIADO']?>
            </p>
        </div>

        <div class="alternativas">
            <ul>
                <?php foreach($alternativas as $key => $value) {?>
                <li>
                    <p class="questao" id="<?= "questao".$value['CD_RESPOSTA']?>" onclick="verificaResposta(<?= $value['CD_RESPOSTA']?>, <?=$_GET['ex']?>, <?=$_GET['mod']?>)"><?= $value['DC_ALTERNATIVA']?></p>
                </li>
                <?php }?>
            </ul>
        </div>

        <div class="bottom">
            <div class="botoesNav">
                <button class="btnNav" <?= $voltar?> onclick="back(<?= $_GET['mod']?>, <?= $_GET['ex']?>)">Voltar</button>
                <button class="btnNav" <?= $avancar?> onclick="next(<?= $_GET['mod']?>, <?= $_GET['ex']?>)">Avançar</button>
            </div>
    
            <div class="dica">
                <a href="#dica" rel="modal:open"><img src="../../extra/lamp.png" class="imgLamp" alt="Dica"></a>
            </div>
        </div>
    
</body>

<div id="dica" class="modal">
    <p><?= $exercicio['DICA']?></p>
  </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="exercicioSelecionado.js"></script>

</html>