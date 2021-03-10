<?php

class BarraProgresso{

    public function getNumExerciciosFeitos($id){

        global $conn;

       

        $sql = "SELECT COUNT(VALOR) AS NUM FROM usuario_pergunta WHERE CD_USUARIO = $id AND VALOR='1'" ;

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

    public function getNumExercicios(){

        global $conn;

       

        $sql = "SELECT COUNT(CD_PERGUNTA) AS NUM FROM pergunta" ;

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



}