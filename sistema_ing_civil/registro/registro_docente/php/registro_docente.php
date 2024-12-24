<?php 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include("../../../conexion.php");
    $errores = array();
    $successes = false;

    $carnet = isset($_POST['carnet']) ? $_POST['carnet'] : null;
    $nombres = isset($_POST['nombres']) ? mb_strtoupper($_POST['nombres'], 'UTF-8') : null;
    $apellidos = isset($_POST['apellidos']) ? mb_strtoupper($_POST['apellidos'], 'UTF-8') : null;
    $Codigo = isset($_POST['Codigo']) ? $_POST['Codigo'] : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;

    if (empty($nombres)) {
        $errores['nombres'] = "Debes ingresar tus nombres";
    }
    if (empty($apellidos)) {
        $errores['apellidos'] = "Debes ingresar tus apellidos";
    }
    if (empty($Codigo)) {
        $errores['Codigo'] = "Debes ingresar tu llave de acceso o código docente";
    }
    if (empty($carnet)) {
        $errores['carnet'] = "Debes ingresar tu carnet de identidad";
    }

    // Validación de contraseña
    if (empty($password)) {
        $errores['password'] = "La contraseña es obligatoria";
    }

    if (!empty($errores)) {
        foreach ($errores as $error) {
            echo "<br>" . $error . "<br>";
        }
    } else {
        try {
            $pdo = new PDO('mysql:host=' . $direccionservidor . ';dbname=' . $baseDatos, $usuarioBD, $contraseniaBD);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // Verificar si el código de docente está disponible
            $sql = "SELECT * FROM codigos_docentes WHERE codigo = :codigo AND estado = 0";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([':codigo' => $Codigo]);
            $codigoDisponible = $stmt->fetch();

            if ($codigoDisponible) {
                $nuevoPassword = password_hash($password, PASSWORD_DEFAULT);

                // Verificar si el usuario ya existe con el mismo carnet
                $sql_user_exists = "SELECT * FROM docentes WHERE carnet = :carnet";
                $stmt_user_exists = $pdo->prepare($sql_user_exists);
                $stmt_user_exists->execute([':carnet' => $carnet]);
                $userExists = $stmt_user_exists->fetch();

                if ($userExists) {
                    echo "El docente ya está registrado con este número de carnet.";
                } else {
                    // Insertar el nuevo docente
                    $sql_insert = "INSERT INTO docentes (nombres, apellidos, password, carnet, codigo) 
                        VALUES (:nombres, :apellidos, :password, :carnet, :codigo)";
                    $stmt_insert = $pdo->prepare($sql_insert);
                    $stmt_insert->execute([
                        ':nombres' => $nombres,
                        ':apellidos' => $apellidos,
                        ':password' => $nuevoPassword,
                        ':carnet' => $carnet,
                        ':codigo' => $Codigo,
                    ]);

                    // Actualizar el estado del código de docente
                    $sql_update = "UPDATE codigos_docentes SET estado = 1 WHERE codigo = :codigo";
                    $stmt_update = $pdo->prepare($sql_update);
                    $stmt_update->execute([':codigo' => $Codigo]);

                    echo "Docente registrado correctamente.";
                    $successes = true;
                }
            } else {
                echo "Código de docente no válido o ya usado.";
            }
        } catch (PDOException $e) {
            echo 'Error al conectar con la base de datos: ' . $e->getMessage();
        }
    }
}
?>

