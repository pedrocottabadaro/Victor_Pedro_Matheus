<?php

class Exercicio{

    public function getExercicios($modulo){

        global $conn;

        $dados = array();

        $sql = "SELECT CD_PERGUNTA FROM pergunta WHERE MODULO = $modulo";

        try{

            $stmt=$conn->prepare($sql);
            $stmt->execute();

            while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

                $dados[] = $row['CD_PERGUNTA'];

            }
            
            return $dados;


        } 
        catch(PDOException $e){
            echo $e->getMessage();
        }

    }

    public function getExercicio($id){

        global $conn;

       

        $sql = "SELECT * FROM pergunta WHERE CD_PERGUNTA = $id";

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

    public function getAlternativas($id){

        global $conn;

        $dados = array();

        $sql = "SELECT * FROM resposta WHERE CD_PERGUNTA = $id";

        try{

            $stmt=$conn->prepare($sql);
            $stmt->execute();

            while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

                $dados[] = $row;

            }
            
            return $dados;


        } 
        catch(PDOException $e){
            echo $e->getMessage();
        }

    }


    public function verificaNav($id)
    {
        global $conn;

        $sql = "SELECT COUNT(CD_PERGUNTA) CONTADOR  FROM pergunta WHERE CD_PERGUNTA = 1 AND MODULO = (SELECT MODULO FROM pergunta WHERE CD_PERGUNTA = 1)";

        try{

            $stmt=$conn->prepare($sql);
            $stmt->execute();

            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if ($id == $row['CONTADOR']) {

                return "disabled";
               
            } else {

                return "";

            }


        } 
        catch(PDOException $e){
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