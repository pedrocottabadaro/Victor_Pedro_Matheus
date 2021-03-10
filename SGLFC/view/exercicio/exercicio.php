<?php

require('../../model/exercicio/exercicio.php');
require('../../database/connection.php');
require('../../model/barraProgresso/barraProgresso.php');

$exercicio = new Exercicio;
$exercicios = $exercicio->getExercicios($_GET['modulo']);


// session_start();
$valida=$_SESSION['id'];



$BarraProgresso = new BarraProgresso;
$numExerciciosFeitos = $BarraProgresso->getNumExerciciosFeitos($valida);
$numExerciciosFeitos = $numExerciciosFeitos['NUM'];
$numExercicios=$BarraProgresso->getNumExercicios();
$numExercicios=$numExercicios['NUM'];
$porc=floatval($numExerciciosFeitos)/floatval($numExercicios);
$porc=$porc*100;



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela Exercicios</title>
    <link rel="stylesheet" href="exercicio.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   
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
                    <a href="../exercicio/exercicio.php">Exercícios</a>
                    <a href="../info/tela-info-user.php">Alterar informações</a>
                </div>
            </div> 
            
            <div class="containerProgress">

                <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-container colorBar w3-round-xlarge" style="width:<?= $porc?>%;height: 30px;"></div>
                </div>
    
            </div> 

            <div class="imageLogout">
                <img src="../../extra/logout-button.png" onclick="sair()" alt="logout">
            </div>             
        </div>
      
        <div class="containerTitle">
            <h1 id="titleExercicios">Exercicios</h1>
        </div>

      
                                                                                                                                        
        <div class="containerBotao">

            <div id="botoes">
                
                <?php foreach ($exercicios as $key => $value) {?>

                    <?php 

                        $resposta = $exercicio->getResposta($value);
                        $classe = (empty($resposta)) ? "vermelho" : "verde";

                    ?>

                    <button id='<?= 'exer'.$value?>' class="<?=$classe?>" onclick="turnActive('<?= 'exer'.$value?>', '<?= $value?>')">
                        <div class="numeroExercicio">

                            <h3><?= $value?></h3>
                            
                        </div>

                    </button>

              <?php }?>

            </div>
        </div>
    
    </div>
</div>
</body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="exercicio.js"></script>

</html>