<?php
session_start(); // Iniciar la sesión
include ("../../../conexion.php");

// Cambiado a 'documentos_practicas'
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['materia'])) {
    if (isset($_POST['nombre_docente']) && isset($_POST['sigla']) && isset($_POST['titulo']) && isset($_POST['asunto']) && isset($_POST['fecha_entrega']) && isset($_POST['nota_practica']) && isset($_POST['nota_teoria'])) {
        $materia = $_POST['materia'];
        $nombre_docente = $_POST['nombre_docente'];
        $sigla = $_POST['sigla'];
        $titulo = $_POST['titulo'];
        $asunto = $_POST['asunto'];
        $fecha_entrega = $_POST['fecha_entrega'];
        $nota_practica = $_POST['nota_practica'];
        $nota_teoria = $_POST['nota_teoria'];
        
        $target_dir = "uploads/";
        $documento_docente = $target_dir . basename($_FILES["documento_docente"]["name"]);
        move_uploaded_file($_FILES["documento_docente"]["tmp_name"], $documento_docente);
        
        $sql = "INSERT INTO $materia (nombre_docente, sigla, titulo, asunto, documento_docente, fecha_entrega, nota_practica, nota_teoria)
                VALUES ('$nombre_docente', '$sigla', '$titulo', '$asunto', '$documento_docente', '$fecha_entrega', '$nota_practica', '$nota_teoria')";
        
        if ($conn->query($sql) === TRUE) {
            $_SESSION['message'] = "Documento enviado correctamente."; // Establecer el mensaje en la sesión
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
            <title>Enviar Documento</title>
            <style>
                
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f0f4f8;
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
                    color: #007bff;
                }
                form {
                    display: flex;
                    flex-direction: column;
                }
                label {
                    margin: 10px 0 5px;
                }
                input[type="text"], input[type="file"], input[type="date"], textarea {
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
                    background-color: #007bff;
                    color: white;
                    border: 1px solid black;
                    padding: 10px;
                    border-radius: 4px;
                    cursor: pointer;
                    font-size: 16px;
                }
                input[type="submit"]:hover {
                    background-color: #0056b3;
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
            <h1>Bienvenido</h1>
        <form action="" method="post" enctype="multipart/form-data">
            <h1>Enviar practica a <?php echo htmlspecialchars($materia); ?></h1>
            <label for="docente">Nombre del Docente:</label>
            <input type="text" id="docente" name="docente">

            <label for="sigla">Sigla:</label>
            <input type="text" id="sigla" name="sigla">

            <label for="titulo">Título:</label>
            <input type="text" id="titulo" name="titulo">

            <label for="asunto">Asunto:</label>
            <textarea id="asunto" name="asunto"></textarea>

            <label for="documento">Documento (PDF, DOC, etc.):</label>
            <input type="file" id="documento" name="documento">

            <label for="fecha_entrega">Fecha de Entrega:</label>
            <input type="date" id="fecha_entrega" name="fecha_entrega">

            <label for="nota_practica">Nota Práctica:</label>
            <input type="text" id="nota_practica" name="nota_practica">

            <input type="submit" value="Enviar">
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
    
    if (!$result) {
        die("Error al ejecutar la consulta: " . $conn->error);
    }
    
    ?>
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Seleccionar Materia a enviar practica</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f4f8;
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
                color: #007bff;
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
                background-color: #007bff;
                color: white;
                border: none;
                padding: 10px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                width: 100%;
                max-width: 300px;
            }
            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
         <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="date"],
        input[type="file"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    </head>
    <body>
        <div class="container">
            <h1>Seleccionar Materia</h1>
            <form action="" method="post">
                <label for="materia">Elige una materia:</label>
                <select id="materia" name="materia">
                    <?php while ($row = $result->fetch_row()): ?>
                        <option value="<?php echo htmlspecialchars($row[0]); ?>"><?php echo htmlspecialchars($row[0]); ?></option>
                    <?php endwhile; ?>
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
