
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="tela-cadastro.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   
</head>
<body>

    <div class="container" >
        
        <div class="containerTitle">
            <h1 id="titleCadastro">Cadastro</h1>
        </div>

        <h1>Precisamos de algumas informações suas</h1>
         
        <form class="formulario" method="post" action="../../controller/controller.php">

            <div class= "field">
                <input type="hidden" name="action" value="create">
                <input type="text" id="nome" name="nome" placeholder="Nome completo" required>
                <input type="text" id="email" name="email" placeholder="E-mail" required>
                <input type="text" id="instituicao" name="instituicao" placeholder="Instituição de Ensino" required>
                <input type="password" id="senha" name="senha" placeholder="Digite uma senha" required>
                <input type="password" id="senha2" name="senha2" placeholder="Digite novamente a senha" required>
            </div>

            <input type="submit" name="entrar" value="CADASTRAR" onclick="cadastrar()">
            <div class="field">
                <a href="../login/tela-login.php">Já tenho uma conta</label>
            </div>

        </form>
     
        </div>
      </div>

</body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="tela-cadastro.js"></script>

</html>