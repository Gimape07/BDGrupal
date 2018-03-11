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
            $query='SELECT nombre FROM usuarios WHERE nombre="'.$user.
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
    
    function editarProducto($nombre, $id){
        $db = connect();
        if ($db != NULL) {
            // update command specification
            $query='UPDATE productos SET nombre=? WHERE id=?';
            if (!($statement = $db->prepare($query))) {
                die("The preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params
            if (!$statement->bind_param("ss", $nombre, $id)) {
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
    
    function eliminarProducto($id){
        $db = connect();
        if ($db != NULL) {
            // Deletion query construction
            $query = 'DELETE FROM productos WHERE id=?';
            if (!($statement = $db->prepare($query))) {
                die("The preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params
            if (!$statement->bind_param("s", $id)) {
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
    
    function getProductos() {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM productos';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            $html = '';
           while ($fila = mysqli_fetch_array($results, MYSQLI_BOTH)) {
                                                // Options: MYSQLI_NUM to use only numeric indexes
                                                // MYSQLI_ASSOC to use only name (string) indexes
                                                // MYSQLI_BOTH, to use both
                    $html .= '<div class="row">
                                <div class="col s12 m7">
                                  <div class="card">
                                    <div class="card-image">
                                      <img src="uploads/'.$fila["imagen"].'">
                                      <span class="card-title">'.$fila["nombre"].'</span>
                                    </div>
                                    <div class="card-content">
                                      <p>Publicado el: '.$fila["created_at"].'.</p>
                                    </div>
                                    <div class="card-action">
                                      <a href="editar.php?id='.$fila["id"].'">Editar</a>
                                      <a href="delete.php?id='.$fila["id"].'">Eliminar</a>
                                    </div>
                                  </div>
                                </div>
                              </div>';
            }
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return true;
    }
    
    function getProducto($id) {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM productos WHERE id='.$id;
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            $html = '';
            $fila = mysqli_fetch_array($results, MYSQLI_BOTH);
            $html .= '<div class="row">
                                <div class="col s12 m7">
                                  <div class="card">
                                    <div class="card-image">
                                      <img src="uploads/'.$fila["imagen"].'">
                                    </div>
                                    <div class="card-content">
                                      <p>Publicado el: '.$fila["created_at"].'.</p>
                                    </div>
                                  </div>
                                </div>
                              </div>';
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return true;
    }
    
    function getCursos() {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM Curso';
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
                                    <img class="card-img-top" src="'.$fila["imagen"].'" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">'.$fila["titulo"].'</h5>
                                    <p class="card-text">'.$fila["descripcion"].'</p>
                                    <a href="'.$fila["enlaceCurso"].'" target = "_blank" class="btn btn-primary">Empieza Ya</a>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-sm btn-outline-secondary">Editar</button>
                                            <button type="button" class="btn btn-sm btn-outline-secondary">Eliminar</button>
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
    
    
    //echo getTable("usuarios");
    //echo getTable("productos");

?>
