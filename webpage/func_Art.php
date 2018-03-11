<?php



    $user=$_SESSION["usuario"];
    //imprime los articulos


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
    
    
    

    
    function getPost() {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT nUser, fechaUpdate, tema, descripcion FROM Post ORDER BY idPost DESC LIMIT 5';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            $html = '';
           while ($fila = mysqli_fetch_array($results, MYSQLI_BOTH)) {
                                                // Options: MYSQLI_NUM to use only numeric indexes
                                                // MYSQLI_ASSOC to use only name (string) indexes
              
                                                // MYSQLI_BOTH, to use both
                   $html .= ' <hr>
                                <h2>'.$fila["tema"].'</h2>
                                <h6><span data-feather="clock" class="iconos"></span>
                                Publicado por '.$fila["nUser"].' el '.$fila["fechaUpdate"].'</h6>
                                <h6><span class="badge badge-primary">Reciclaje</span>
                                <span class="badge badge-secondary">Tag 1</span></h6>
                                <p>'.$fila["descripcion"].'</p>
                                  <br><br>
                                  
                                  ';
                                  
            }
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return true;
    }
    
    
    
    
    
    
    
    
    
    
?>