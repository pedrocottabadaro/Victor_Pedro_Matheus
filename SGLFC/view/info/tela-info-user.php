<?php 

session_start();

require('../../model/usuario/usuario.php');
require('../../database/connection.php');

$usuario = new Usuario;
$usuario = $usuario->getUsuario($_SESSION['id']);

// echo '<pre>';
// print_r($usuario);
// echo '</pre>';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suas informações</title>
    <link rel="stylesheet" href="tela-info-user.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   
</head>
<body>

    <div class="container" >
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

            <div class="imageLogout">
                <img src="../../extra/logout-button.png" onclick="sair()" alt="logout">
            </div>         
        </div>

        <div class="containerTitle">
            <h1 id="titleInfo">Alterar informações</h1>
        </div>

        <form class="formulario" method="post" action="../../controller/controller.php">

            <div class= "field">
                <input type="hidden" name="action" value="update">
                <input type="hidden" name="id" value="<?=$usuario['CD_USUARIO']?>">
                <input type="text" id="nome" name="nome" value="<?=$usuario['NOME']?>" required>
                <input type="text" id="email" name="email" value="<?=$usuario['EMAIL']?>" required>
                <input type="text" id="instituicao" name="instituicao" value="<?=$usuario['INSTITUICAO']?>" required>
                <input type="password" id="senha" name="senha" value="<?=$usuario['SENHA']?>" required>
                <input type="password" id="senha2" name="senha2" value="<?=$usuario['SENHA']?>" required>
            </div>
           
            <input class="alterar" type="submit" value="ALTERAR" onclick="alterar()">

        </form>
     
        </div>
      </div>

</body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="tela-info-user.js"></script>

</html>