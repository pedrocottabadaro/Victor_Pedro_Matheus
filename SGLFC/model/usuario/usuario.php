<?php

class Usuario{

    public function createUsuario($nome,$senha,$email,$instituicao){
        global $conn;

        $sql="INSERT INTO usuario (NOME,SENHA,EMAIL,INSTITUICAO) VALUES ('{$nome}','{$senha}','{$email}','{$instituicao}')";

        try{

            
            $stmt=$conn->prepare($sql);
            $stmt->execute();
                


        } 
        catch(PDOException $e){
            echo $e->getMessage();
        }
    }



    public function getUsuario($id){

        global $conn;

       

        $sql = "SELECT * FROM usuario WHERE CD_USUARIO = $id";

        try{

            $stmt=$conn->prepare($sql);
            $stmt->execute();

            $row = $stmt->fetch(PDO::FETCH_ASSOC);
                
            
            
            return $row;


        } 
        catch(PDOException $e){
            echo $e->getMessage();
        }

    }


    public function updateUsuario($id, $nome, $senha, $email, $instituicao)
    {
        global $conn;

        $sql = "UPDATE usuario  SET NOME = '{$nome}', SENHA = '{$senha}', EMAIL = '{$email}', INSTITUICAO = '{$instituicao}' WHERE CD_USUARIO = $id";

        try {

            $stmt = $conn->prepare($sql);
            $stmt->execute();
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function validaLogin($email, $senha)
    {
        global $conn;

       

        $sql = "SELECT * FROM usuario WHERE EMAIL = '$email' and SENHA = '$senha'";

       

        try{

            $stmt=$conn->prepare($sql);
            $stmt->execute();

            $row = $stmt->fetch(PDO::FETCH_ASSOC);
                
            if (!empty($row)) {

                return $row['CD_USUARIO'];

            } else {

                return false;

            }


        } 
        catch(PDOException $e){

            echo $e->getMessage();

        }
    }

}