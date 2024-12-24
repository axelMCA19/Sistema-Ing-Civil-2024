<?php 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include("../../../conexion.php");

    $errores = array();
    $successes = false;

    $carnet = isset($_POST['carnet']) ? $_POST['carnet'] : null;
    $nombres = isset($_POST['nombres']) ? mb_strtoupper($_POST['nombres'], 'UTF-8') : null;
    $apellidos = isset($_POST['apellidos']) ? mb_strtoupper($_POST['apellidos'], 'UTF-8') : null;
    $Codigo_universitario = isset($_POST['Codigo_universitario']) ? $_POST['Codigo_universitario'] : null;
    $semestre = isset($_POST['semestre']) ? $_POST['semestre'] : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;
       // Manejo de la foto de perfil
       if (isset($_FILES['foto_perfil']) && $_FILES['foto_perfil']['error'] == 0) {
        $foto_perfil = $_FILES['foto_perfil'];
        $nombreArchivo = $foto_perfil['name'];
        $tipoArchivo = $foto_perfil['type'];
        $rutaTemporal = $foto_perfil['tmp_name'];
        $tamanoArchivo = $foto_perfil['size'];

        // Validar el tipo de archivo (opcional)
        $tiposPermitidos = ['image/jpeg', 'image/png', 'image/gif'];
        if (in_array($tipoArchivo, $tiposPermitidos)) {
            // Ruta donde guardar la imagen
            $directorioDestino = '../foto_perfil/'; // Ajusta esta ruta
            $rutaDestino = $directorioDestino . basename($nombreArchivo);

            // Mover el archivo al directorio destino
            if (move_uploaded_file($rutaTemporal, $rutaDestino)) {
                echo "Foto de perfil subida exitosamente.";
            } else {
                echo "Error al subir la foto de perfil.";
            }
        } else {
            echo "Tipo de archivo no permitido.";
        }
    }

    if (empty($nombres)) {
        $errores['nombres'] = "Debes ingresar tus nombres";
    }
    if (empty($apellidos)) {
        $errores['apellidos'] = "Debes ingresar tus apellidos";
    }
    if (empty($Codigo_universitario)) {
        $errores['Codigo_universitario'] = "Debes ingresar tu llave de acceso o codigo universitario";
    }
    if (empty($carnet)) {
        $errores['carnet'] = "Debes ingresar tu carnet de identidad o ru";
    }
    if (empty($semestre)) {
        $errores['semestre'] = "Debes ingresar tu semestre al que perteneces";
    }

    // Validación de contraseña
    if (empty($password)) {
        $errores['password'] = "La contraseña es obligatoria";
    }

    foreach ($errores as $error) {
        echo "<br>" . $error . "<br>";
    }

    if (empty($errores)) {
        try {
            $pdo = new PDO('mysql:host=' . $direccionservidor . ';dbname=' . $baseDatos, $usuarioBD, $contraseniaBD);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Para que el PDO maneje los errores de manera automática

            // Verificar si el código de universitario está disponible
            $sql = "SELECT * FROM codigos_universitario WHERE codigo = :codigo AND estado = 0";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([':codigo' => $Codigo_universitario]);
            $codigoDisponible = $stmt->fetch();

            if ($codigoDisponible) {
                $nuevoPassword = password_hash($password, PASSWORD_DEFAULT);

                // Verificar si el usuario ya existe con el mismo carnet
                $sql_user_exists = "SELECT * FROM universitarios WHERE carnet = :carnet";
                $stmt_user_exists = $pdo->prepare($sql_user_exists);
                $stmt_user_exists->execute([':carnet' => $carnet]);
                $userExists = $stmt_user_exists->fetch();

                if ($userExists) {
                    echo "El universitario ya está registrado con este número de carnet o ru.";
                } else {
                    // Insertar el nuevo usuario
                    $sql_insert = "INSERT INTO universitarios (nombres, apellidos, semestre, password, carnet, codigo_universitario) 
                        VALUES (:nombres, :apellidos, :semestre, :password, :carnet, :codigo_universitario)";
                    $stmt_insert = $pdo->prepare($sql_insert);
                    $stmt_insert->execute([
                        ':nombres' => $nombres,
                        ':apellidos' => $apellidos,
                        ':semestre' => $semestre,
                        ':password' => $nuevoPassword,
                        ':carnet' => $carnet,
                        ':codigo_universitario' => $Codigo_universitario,
                    ]);

                    // Actualizar el estado del código de universitario
                    $sql_update = "UPDATE codigos_universitario SET estado = 1 WHERE codigo = :codigo";
                    $stmt_update = $pdo->prepare($sql_update);
                    $stmt_update->execute([':codigo' => $Codigo_universitario]);

                    $successes = true;
                }
            } else {
                echo "Código de universitario no válido o ya usado.";
            }
        } catch (PDOException $e) {
            echo 'Error al conectar con la base de datos: ' . $e->getMessage();
        }
    } else {
        echo "No se han registrado los datos. Comuníquese con Axel al número de teléfono +59169362258.";
    }

if ($conn->query($sql) === TRUE) {
    echo "Universitario registrado correctamente";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
}

?>

