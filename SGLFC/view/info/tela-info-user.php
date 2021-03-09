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
                    <a href="#">Apostila</a>
                    <a href="../modulo/modulo.html">Módulos</a>
                    <a href="../exercicio/exercicio.html">Exercícios</a>
                    <a href="../info/tela-info-user.html">Alterar informações</a>
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
                <input type="text" id="nome" name="nome" placeholder="XXXXXXXX" required>
                <input type="text" id="email" name="email" placeholder="XXXXXXX@XXXXX.COM" required>
                <input type="text" id="instituicao" name="instituicao" placeholder="XXXX" required>
                <input type="password" id="senha" name="senha" placeholder="**********" required>
                <input type="password" id="senha2" name="senha2" placeholder="**********" required>
            </div>
           
            <input class="alterar" type="submit" value="ALTERAR" onclick="altera()">

        </form>
     
        </div>
      </div>

</body>

<script src="tela-info-user.js"></script>

</html>