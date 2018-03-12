<?php
    function connect() {
        $ENV = "prod";
        if ($ENV == "dev") {
            $mysql = mysqli_connect("localhost","pedro","perez","rbac");
                                            //root si estan en windows
        } else  if ($ENV == "prod"){
            $mysql = mysqli_connect("localhost","negromancer","","rbac");
        }
        
        $mysql->set_charset("utf8");
        return $mysql;
    }
    
    function disconnect($mysql) {
        mysqli_close($mysql);
    }

    
    
    
    
    //Muestra el usuario, contraseña y nombre
    function getCuenta($user){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT Nombre, Apellidos, Contrasena FROM usuario WHERE Id_Usuario = "'.$user.'"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Información de la Cuenta</h2>
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
    
    
    
    
    
    
     //coño
     //coñp tuyo
   function getInfoPersonal($user){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM usuario WHERE Id_Usuario = "'.$user.'"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Información Personal</h2>
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
    
    function getArea($user){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM trabajadores_areatrabajo WHERE Id_Usuario = "'.$user.'"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Área de Trabajo</h2>
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
    
    //obtiene las transacciones por usuario, a desplegarse en el panel de control

    
    //obtiene el rol del usuario
    function getRol($user){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT Id_Rol FROM roles_usuario WHERE Id_Usuario="'.$user.'"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            $html = '';
            $fila = mysqli_fetch_array($results, MYSQLI_BOTH);
            $html .= $fila["Id_Rol"];
            $rol = $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return $rol;
        }
        return true;
    }
    
    
    
    
    
    
    
    function login($user, $password) {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT Id_Usuario FROM usuario WHERE Id_Usuario="'.$user.
                '" AND Contrasena="'.$password.'"';
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
    
    function getName($user) {
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT Nombre FROM usuario WHERE Id_Usuario="'.$user.
                '"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            
            $html = '';
            if (mysqli_num_rows($results) > 0)  {
                $fila = mysqli_fetch_array($results, MYSQLI_BOTH);
                $html .= $fila["Nombre"];
                echo $html;
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
    
    function eliminarCapsula($idCapsula){
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
                                            <a class="btn btn-sm btn-outline-secondary" role="button" href="#" data-href="/eliminarCapsula.php?id='.$fila["idCapsula"].'" data-toggle="modal" data-target="#confirm-delete">Eliminar</a>
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
    
    
    function agregarCapsula($titulo, $descripcion, $enlaceCapsula) {
        $db = connect();
        if ($db != NULL) {
            // insert command specification 
            $query='INSERT INTO Capsula (titulo, descripcion, enlaceCapsula) VALUES (?,?,?) ';
            // Preparing the statement 
            if (!($statement = $db->prepare($query))) {
                die("Preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params 
            if (!$statement->bind_param("sss", $titulo, $descripcion, $enlaceCapsula)) {
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
    
    //echo getTable("usuarios");
    //echo getTable("productos");
    
    
    
    //no molestar 
    //Area de Giancarlo
    //coño
   function getTransactions($user){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM usuario_transaccion WHERE Id_Usuario = "'.$user.'"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Transacciones</h2>
                        <p>Listado de transacciones realizadas</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    function getTransactionsFull(){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM usuario_transaccion WHERE 1';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Transacciones</h2>
                        <p>Listado de transacciones realizadas</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }

 function getBalance($user){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT Balance FROM usuario WHERE Id_Usuario = "'.$user.'"';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
            $html = '';
            if (mysqli_num_rows($results) > 0)  {
                $fila = mysqli_fetch_array($results, MYSQLI_BOTH);
                $html .= $fila["Balance"];
                // it releases the associated results
                mysqli_free_result($results);
                disconnect($db);
                return $html;
            }
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return false;
        }
        return false;
    }
    
    function setBalance($nuevoBalance, $user){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='UPDATE usuario SET Balance=? WHERE Id_Usuario =?';
            if (!($statement = $db->prepare($query))) {
                die("The preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params
            if (!$statement->bind_param("ss", $nuevoBalance, $user)) {
                die("Parameter vinculation failed: (" . $statement->errno . ") " . $statement->error);
            } 
            // update execution
            if ($statement->execute()) {
                echo 'There were ' . mysqli_affected_rows($db) . ' affected rows';
            } else {
                die("Update failed: (" . $statement->errno . ") " . $statement->error);
            }
             // Query execution; returns identifier of the result group
            $db->query($query);
             // cycle to explode every line of the results
            disconnect($db);
            return true;
        }
        return false;
    }
    
    function getUsuariosRegistrados(){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT Id_Usuario, Nombre, Apellidos, Fecha_Creacion, Fecha_Nacimiento, Balance, Habilitado FROM usuario WHERE 1';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Usuarios Registrados</h2>
                        <p>Listado de usuarios registrados</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
    function getPersonalHabilitado(){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT t.Id_Usuario,Telefono, Seguro,Sueldo,RFC';
            $query.=' FROM trabajadores t, usuario u';
            $query.=' WHERE t.Id_Usuario = u.Id_Usuario';
            $query.=' AND Habilitado=1';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Personal Habilitado</h2>
                        <p>Listado de personal habilitado</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
     function agregarTransaccion($monto, $tipo, $idUsuario) {
        $db = connect();
        if ($db != NULL) {
            // insert command specification 
            $idSeccion ="Caja 1";
            $query='INSERT INTO usuario_transaccion (Monto, Tipo, Id_Seccion, Id_Usuario) VALUES (?,?,?,?) ';
            // Preparing the statement 
            if (!($statement = $db->prepare($query))) {
                die("Preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params 
            if (!$statement->bind_param("ssss", $monto, $tipo, $idSeccion, $idUsuario)) {
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




//subconsultas

    function getMontos($min, $max){
        $db = connect();
        if ($db != NULL) {
            
            
            
            
            //Specification of the SQL query
            $query='SELECT * FROM usuario_transaccion WHERE Monto';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Usuarios Registrados</h2>
                        <p>Listado de usuarios registrados</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    


    function getAreatrabajo(){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM areatrabajo WHERE 1';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Áreas de trabajo</h2>
                        <p>Listado de áreas de trabajo</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    
    
    function getSecciones(){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM secciones WHERE 1';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Secciones</h2>
                        <p>Listado de secciones</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
    function getPrivilegios(){
        $db = connect();
        if ($db != NULL) {
            
            //Specification of the SQL query
            $query='SELECT * FROM privilegios WHERE 1';
            $query;
             // Query execution; returns identifier of the result group
            $results = $db->query($query);
             // cycle to explode every line of the results
           $html =  '<div class="container">
                        <h2>Privilegios</h2>
                        <p>Listado de privilegios</p>            
                        <table class="table table-striped">
                            <thead>
                                <tr>';
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
                    for($i=0; $i<count($columnas); $i++) {
                        // use of numeric index
                        $html .= '<td>'.$fila[$i].'</td>'; 
                    }
                    $html .= '</tr>';
            }
            $html .= '</tbody></table></div>';   
            echo $html;
            // it releases the associated results
            mysqli_free_result($results);
            disconnect($db);
            return true;
        }
        return false;
    }
?>