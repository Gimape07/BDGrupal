<?php


    function connect() {
        $ENV = "prod";
        if ($ENV == "dev") {
            $mysql = mysqli_connect("localhost","pedro","perez","proyecto");
                                            //root si estan en windows
        } else  if ($ENV == "prod"){
            $mysql = mysqli_connect("localhost","negromancer","","proyecto");
        }
        
        $mysql->set_charset("utf8");
        return $mysql;
    }
    
    function disconnect($mysql) {
        mysqli_close($mysql);
    }



    function agregaPost($user) {
        
        $titulo=$_POST["titulo"];
        $descripcion=$_POST["descripcion"];
        
        $db = connect();
        if ($db != NULL) {
            
        
            $fecha = getdate();
            $enlace="enlace";
            // insert command specification 
            $query='INSERT INTO Post (nUser, fechaInicial, tema, descripcion, enlace) VALUES (?,?,?,?,?) ';
            // Preparing the statement 
            if (!($statement = $db->prepare($query))) {
                die("Preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params 
            if (!$statement->bind_param("sssss", $user, $fecha, $titulo, $descripcion, $enlace)) {
                die("Parameter vinculation failed: (" . $statement->errno . ") " . $statement->error); 
            }
             // Executing the statement
             if (!$statement->execute()) {
                die("Execution failed: (" . $statement->errno . ") " . $statement->error);
              }
            
            mysqli_free_result($results);
            disconnect($db);
            return true;
        } 
        return false;
    }
    
    
?>