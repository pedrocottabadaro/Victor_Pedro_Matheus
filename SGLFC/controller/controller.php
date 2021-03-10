<?php
require('../database/connection.php');
require('../model/usuario/usuario.php');
require('../model/exercicio/exercicio.php');

$usuario = new Usuario();
$exercicio = new Exercicio();


if($_POST['action'] == 'create'){

    $usuario->createUsuario($_POST['nome'], $_POST['senha'], $_POST['email'], $_POST['instituicao']);
    header('Location:../view/login/tela-login.php');

}

else if($_POST['action'] == 'update'){
    
    
    $usuario->updateUsuario($_POST['id'], $_POST['nome'], $_POST['senha'], $_POST['email'], $_POST['instituicao']);

    header('Location:../view/info/tela-info-user.php');
    
} else if($_POST['action'] == 'login'){
    
    $valida = $usuario->validaLogin($_POST['email'], $_POST['senha']);
   
  
    if ($valida) {
 
        session_start();
        $_SESSION['id'] = $valida;
        header('Location:../view/modulo/modulo.php');

    } else {

        header('Location:../view/login/tela-login.php');
        
    }
    
} else if ($_POST['action'] == 'resposta') {

    echo $valida = $exercicio->verificaResposta($_POST['alternativa']);

} else if ($_POST['action'] == 'insertResposta') {

   echo $exercicio->insertResposta($_POST['exercicio'], $_POST['valor']);

}

