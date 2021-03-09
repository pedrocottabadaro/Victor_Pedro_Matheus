<?php

require('../model/usuario/usuario.php');



$usuario=new usuario();

if($_POST['action']=='create'){

    $usuario->createUsuario($_POST['nome'],$_POST['senha'],$_POST['email'],$_POST['instituicao']);
    header('Location:index.php');

}

else if($_POST['action']=='update'){
    
    
    $usuario->updateUsuario($_POST['id'],$_POST['nome'],$_POST['senha'],$_POST['email'],$_POST['instituicao']);

    header('Location:index.php');
    
}