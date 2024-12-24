<?php
session_start(); // Iniciar la sesión

include ("../../conexion_recepcion_practica.php");
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['materia'])) {
    if (isset($_POST['nombre_docente']) && isset($_POST['sigla']) && isset($_POST['titulo']) && isset($_POST['asunto']) && isset($_POST['nombre_alumno']) && isset($_POST['apellido_alumno']) && isset($_POST['semestre'])) {
        $materia = $_POST['materia'];
        $nombre_docente = $_POST['nombre_docente'];
        $sigla = $_POST['sigla'];
        $titulo = $_POST['titulo'];
        $asunto = $_POST['asunto'];
        $nombre_alumno = $_POST['nombre_alumno'];
        $apellido_alumno = $_POST['apellido_alumno'];
        $semestre = $_POST['semestre'];
        $fecha_entrega = date('Y-m-d');
        
        $target_dir = "uploads/";
        $documento_entrega = $target_dir . basename($_FILES["documento_entrega"]["name"]);
        move_uploaded_file($_FILES["documento_entrega"]["tmp_name"], $documento_entrega);
        
        $sql = "INSERT INTO $materia (nombre_docente, sigla, titulo, asunto, documento_entrega, fecha_entrega, nombre_alumno, apellido_alumno, semestre)
                VALUES ('$nombre_docente', '$sigla', '$titulo', '$asunto', '$documento_entrega', '$fecha_entrega', '$nombre_alumno', '$apellido_alumno', '$semestre')";
        
        if ($conn->query($sql) === TRUE) {
            $_SESSION['message'] = "Práctica enviada correctamente."; // Establecer el mensaje en la sesión
            header("Location: " . $_SERVER['PHP_SELF']); // Redirigir a la misma página
            exit();
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else if (isset($_POST['materia'])) {
        $materia = $_POST['materia'];
        ?>
        <!DOCTYPE html>
        <html lang="es">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Enviar Práctica</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f4f4f4;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                    margin: 0;
                }
                .container {
                    background: #ffffff;
                    padding: 20px;
                    border-radius: 8px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    max-width: 600px;
                    width: 100%;
                }
                h1 {
                    text-align: center;
                    color: #28a745;
                }
                form {
                    display: flex;
                    flex-direction: column;
                }
                label {
                    margin: 10px 0 5px;
                }
                input[type="text"], input[type="file"], textarea {
                    padding: 10px;
                    border: 1px solid #ddd;
                    border-radius: 4px;
                    margin-bottom: 15px;
                }
                input[type="text"]::placeholder, textarea::placeholder {
                    color: #888;
                }
                textarea {
                    resize: vertical;
                }
                input[type="submit"] {
                    background-color: #28a745;
                    color: white;
                    border: none;
                    padding: 10px;
                    border-radius: 4px;
                    cursor: pointer;
                    font-size: 16px;
                }
                input[type="submit"]:hover {
                    background-color: #218838;
                }
                .message {
                    text-align: center;
                    margin-bottom: 20px;
                    color: #28a745;
                }
            </style>
        </head>
        <body>
            <div class="container">
                <h1>Enviar Práctica para <?php echo htmlspecialchars($materia); ?></h1>
                <?php if (isset($_SESSION['message'])): ?>
                    <div class="message"><?php echo $_SESSION['message']; unset($_SESSION['message']); ?></div>
                <?php endif; ?>
                <form action="" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="materia" value="<?php echo htmlspecialchars($materia); ?>">
                    
                    <label for="nombre_docente">Nombre del Docente:</label>
                    <input type="text" id="nombre_docente" name="nombre_docente" placeholder="Nombre del Docente" required>

                    <label for="sigla">Sigla:</label>
                    <input type="text" id="sigla" name="sigla" placeholder="Sigla" required>

                    <label for="titulo">Título:</label>
                    <input type="text" id="titulo" name="titulo" placeholder="Título" required>

                    <label for="asunto">Asunto:</label>
                    <textarea id="asunto" name="asunto" placeholder="Asunto" required></textarea>

                    <label for="documento_entrega">Documento (PDF, DOC, etc.):</label>
                    <input type="file" id="documento_entrega" name="documento_entrega" accept=".pdf,.doc,.docx,.txt" required>

                    <label for="nombre_alumno">Nombre del Alumno:</label>
                    <input type="text" id="nombre_alumno" name="nombre_alumno" placeholder="Nombre del Alumno" required>

                    <label for="apellido_alumno">Apellido del Alumno:</label>
                    <input type="text" id="apellido_alumno" name="apellido_alumno" placeholder="Apellido del Alumno" required>

                    <label for="semestre">Semestre:</label>
                    <input type="text" id="semestre" name="semestre" placeholder="Semestre" required>

                    <input type="submit" value="Enviar Práctica">
                </form>
            </div>
        </body>
        </html>
        <?php
        exit();
    }
} else {
    if (isset($_SESSION['message'])) {
        echo "<p class='message'>" . $_SESSION['message'] . "</p>"; // Mostrar mensaje si existe
        unset($_SESSION['message']); // Limpiar el mensaje después de mostrarlo
    }
    
    $sql = "SHOW TABLES";
    $result = $conn->query($sql);
    ?>
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Seleccionar Materia</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .container {
                background: #ffffff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                max-width: 600px;
                width: 100%;
            }
            h1 {
                text-align: center;
                color: #28a745;
            }
            form {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            label {
                margin: 10px 0 5px;
            }
            select {
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
                margin-bottom: 15px;
                width: 100%;
                max-width: 300px;
            }
            input[type="submit"] {
                background-color: #28a745;
                color: white;
                border: none;
                padding: 10px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
            }
            input[type="submit"]:hover {
                background-color: #218838;
            }
            .message {
                text-align: center;
                margin-bottom: 20px;
                color: #28a745;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Bienvenido, por favor seleccione su materia</h1>
            <form action="" method="post">
                <label for="materia">Materia:</label>
                <select name="materia" id="materia" required>
                    <?php
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_array()) {
                            echo "<option value='{$row[0]}'>{$row[0]}</option>";
                        }
                    }
                    ?>
                </select>
                <input type="submit" value="Seleccionar">
            </form>
        </div>
    </body>
    </html>
    <?php
}
$conn->close();
?>
