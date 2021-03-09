<?php
require('../database/connection.php');
require('../model/usuario/usuario.php');

$usuario = new Usuario();


if($_POST['action'] == 'create'){

    $usuario->createUsuario($_POST['nome'], $_POST['senha'], $_POST['email'], $_POST['instituicao']);
    header('Location:../view/login/tela-login.php');

}

else if($_POST['action'] == 'update'){
    
    
    $usuario->updateUsuario($_POST['id'], $_POST['nome'], $_POST['senha'], $_POST['email'], $_POST['instituicao']);

    header('Location:index.php');
    
} else if($_POST['action'] == 'login'){
    
    echo "entrei <br>";
    
    $valida = $usuario->validaLogin($_POST['email'], $_POST['senha']);

    echo "valida: $valida";

    if ($valida) {

        header('Location:../view/modulo/modulo.html');

    } else {

        header('Location:../view/login/tela-login.php');
        
    }
    
}

