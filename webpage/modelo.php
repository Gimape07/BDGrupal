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
    
    function login($user, $password) {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT nUser FROM Usuario WHERE nUser="'.$user.
                '" AND password="'.$password.'"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
             
            if (mysqli_num_rows($results) > 0)  {
                // it releases the associated results
                mysqli_free_result($results);
                disconnect($db);
                return true;
            }
            return false;
        } 
        return false;
    }
    
    function crearProducto($nombre, $imagen) {
        $db = connect();
        if ($db != NULL) {
            
            // insert command specification 
            $query='INSERT INTO productos (nombre,imagen) VALUES (?,?) ';
            // Preparing the statement 
            if (!($statement = $db->prepare($query))) {
                die("Preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params 
            if (!$statement->bind_param("ss", $nombre, $imagen)) {
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
    
    function editarCapsula($titulo, $descripcion, $enlace, $id){
        $db = connect();
        if ($db != NULL) {
            // update command specification
            $query='UPDATE Capsula SET titulo=?, descripcion=?, enlaceCapsula=? WHERE idCapsula=?';
            if (!($statement = $db->prepare($query))) {
                die("The preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params
            if (!$statement->bind_param("ssss", $titulo, $descripcion, $enlace, $id)) {
                die("Parameter vinculation failed: (" . $statement->errno . ") " . $statement->error);
            } 
            // update execution
            if ($statement->execute()) {
                echo 'There were ' . mysqli_affected_rows($db) . ' affected rows';
            } else {
                die("Update failed: (" . $statement->errno . ") " . $statement->error);
            }
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
    function eliminarCapsula($id){
        $db = connect();
        if ($db != NULL) {
            // Deletion query construction
            $query = 'DELETE FROM Capsula WHERE idCapsula=?';
            if (!($statement = $db->prepare($query))) {
                die("The preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params
            if (!$statement->bind_param("s", $idCapsula)) {
                die("Parameter vinculation failed: (" . $statement->errno . ") " . $statement->error);
            } 
            // delete execution
            if ($statement->execute()) {
                echo 'There were ' . mysqli_affected_rows($db) . ' affected rows';
            } else {
                die("Update failed: (" . $statement->errno . ") " . $statement->error);
            }
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
    function getTable($tabla) {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM '.$tabla;
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
        
           $html = '<table class="striped">';
           $html .= '<thead>';
           $html .= '<tr>';
           $columnas = $results->fetch_fields();
           for($i=0; $i<count($columnas); $i++) {
                $html .= '<th>'.$columnas[$i]->name.'</th>';
           }
           $html .= '</tr>';
           $html .= '</thead>';
           
           $html .= '<tbody>';
           while ($fila = mysqli_fetch_array($results, MYSQLI_BOTH)) {
                                                // Options: MYSQLI_NUM to use only numeric indexes
                                                // MYSQLI_ASSOC to use only name (string) indexes
                                                // MYSQLI_BOTH, to use both
                    $html .= '<tr>';
                    for($i=0; $i<count($fila); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table>';   
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return $html;
        }
        return false;
    }
    
    function getCapsulas() {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM Capsula';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            $html = '';
           while ($fila = mysqli_fetch_array($results, MYSQLI_BOTH)) {
                                                // Options: MYSQLI_NUM to use only numeric indexes
                                                // MYSQLI_ASSOC to use only name (string) indexes
                                                // MYSQLI_BOTH, to use both
                    $html .= '<div class="col-md-4">
                                <div class="card mb-4 box-shadow">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <iframe class="embed-responsive-item" src="'.$fila["enlaceCapsula"].'" allowfullscreen></iframe>
                                    </div>
                                <div class="card-body">
                                    <h5 class="card-title">'.$fila["titulo"].'</h5>
                                    <p class="card-text">'.$fila["descripcion"].'</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a class="btn btn-sm btn-outline-secondary" href="editarCapsula.php?id='.$fila["idCapsula"].'&titulo='.$fila["titulo"].'&enlace='.$fila["enlaceCapsula"].'" role="button">Editar</a>
                                            <a class="btn btn-sm btn-outline-secondary" href="eliminarCapsula.php?id='.$fila["idCapsula"].'" role="button">Eliminar</a>
                                        </div>
                                    <small class="text-muted">9 mins</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
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
    
    function getCapsula($idCapsula) {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM Capsula WHERE idCapsula='.$idCapsula;
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            $html = '';
            $fila = mysqli_fetch_array($results, MYSQLI_BOTH);
            $html .= '<div class="col-md-4">
                                <div class="card mb-4 box-shadow">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <iframe class="embed-responsive-item" src="'.$fila["enlaceCapsula"].'" allowfullscreen></iframe>
                                    </div>
                                <div class="card-body">
                                    <h5 class="card-title">'.$fila["titulo"].'</h5>
                                    <p class="card-text">'.$fila["descripcion"].'</p>
                                    </div>
                                </div>
                            </div>
                            
                            ';
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return true;
    }
    
    
    
    //echo getTable("usuarios");
    //echo getTable("productos");

?>
