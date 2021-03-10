<?php

require('../../model/exercicio/exercicio.php');
require('../../database/connection.php');

$exercicios = new Exercicio;
$exercicios = $exercicios->getExercicios($_GET['modulo']);

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
                    <a href="#">Apostila</a>
                    <a href="../modulo/modulo.html">Módulos</a>
                    <a href="../exercicio/exercicio.html">Exercícios</a>
                    <a href="../info/tela-info-user.html">Alterar informações</a>
                </div>
            </div> 
            
            <div class="containerProgress">

                <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-container colorBar w3-round-xlarge" style="width:25%;height: 30px;"></div>
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

                    <button id='exer1' onclick="turnActive('exer1', '<?= $value?>')">
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