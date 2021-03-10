
<?php

    session_start();
    $valida=$_SESSION['id'];
    

    require('../../model/barraProgresso/barraProgresso.php');
    require('../../database/connection.php');

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
    <title>Tela Inicial</title>
    <link rel="stylesheet" href="modulo.css">
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
            <h1 id="titleModulos">Módulos</h1>
        </div>
                                                                                                                                        
        <div class="containerBotao">

            <div id="botoes">
                
                <button id='mod1' onclick="turnActive('mod1', 1)">
                    <div class="numeroModulo">

                        <h3>1</h3>
                        <h4 class="capitulo">Introdução</h4>
                    
                    </div>

                </button>

                <button id='mod2' onclick="turnActive('mod2', 2)">
                    <div class="numeroModulo">

                        <h3>2</h3>
                        <h4 class="capitulo">Proposições</h4>
                    
                    </div>

                </button>

                <button id='mod3' onclick="turnActive('mod3', 3)">
                    <div class="numeroModulo">

                        <h3>3</h3>
                        <h4 class="capitulo">Tabelas-Verdade</h4>
                    
                    </div>

                </button>


                <button id='mod4' onclick="turnActive('mod4', 4)">
                    <div class="numeroModulo">

                        <h3>4</h3>
                        <h4 class="capitulo">Tautologias</h4>
        
                    
                    </div>

                </button>

                <button id='mod5' onclick="turnActive('mod5', 5)">
                    <div class="numeroModulo">

                        <h3>5</h3>
                        <h4 class="capitulo">Implicação e</h4>
                        <h4 class="capitulo">Equivalência Lógica</h4>
                    
                    </div>

                </button>

                <button id='mod6' onclick="turnActive('mod6', 6)">
                    <div class="numeroModulo">

                        <h3>6</h3>
                        <h4 class="capitulo">Algebra das</h4>
                        <h4 class="capitulo">Proposições</h4>
                    
                    </div>

                </button>

                
                <button id='mod7' onclick="turnActive('mod7', 7)">
                    <div class="numeroModulo">

                        <h3>7</h3>
                        <h4 class="capitulo">Método Dedutivo</h4>
                    
                    </div>

                </button>

                 
                <button id='mod8' onclick="turnActive('mod8', 8)">
                    <div class="numeroModulo">

                        <h3>8</h3>
                        <h4 class="capitulo">Argumentos e</h4>
                        <h4 class="capitulo">Inferências</h4>
                    
                    </div>

                </button>

                <button id='mod9' onclick="turnActive('mod9', 9)">
                    <div class="numeroModulo">

                        <h3>9</h3>
                        <h4 class="capitulo">Verificação</h4>
                        <h4 class="capitulo">da Validade</h4>
                    
                    </div>

                </button>

                
                <button id='mod10' onclick="turnActive('mod10', 10)">
                    <div class="numeroModulo">

                        <h3>10</h3>
                        <h4 class="capitulo">Demonstração</h4>
                        <h4 class="capitulo">Condicional</h4>
                    
                    </div>

                </button>

                <button id='mod11' onclick="turnActive('mod11', 11)">
                    <div class="numeroModulo">

                        <h3>11</h3>
                        <h4 class="capitulo">Predicados e</h4>
                        <h4 class="capitulo">Sentenças Abertas</h4>
                    
                    </div>

                </button>

                <button id='mod12' onclick="turnActive('mod12', 12)">
                    <div class="numeroModulo">

                        <h3>12</h3>
                        <h4 class="capitulo">Quantificadores</h4>
                    
                    </div>

                </button>
            </div>
        </div>
    
    </div>
</div>
</body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="modulo.js"></script>

</html>