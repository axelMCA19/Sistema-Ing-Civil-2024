<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Documentos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        .container {
            width: 95%;
            max-width: 1200px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            margin-top: 0;
            font-size: 1.5em;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .vertical-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .data-row {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
            text-align: center; /* Centrar contenido en la fila */
        }
        .data-row div {
            margin-bottom: 10px;
            text-align: left; /* Alinear etiquetas a la izquierda dentro de la fila centrada */
        }
        .data-label {
            font-weight: bold;
            display: block;
        }
        a {
            color: #4CAF50;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        @media (max-width: 768px) {
            th, td {
                padding: 8px;
            }
            h1 {
                font-size: 1.2em;
            }
        }
        @media (max-width: 480px) {
            .container {
                width: 100%;
                padding: 10px;
            }
            .vertical-table {
                font-size: 14px;
            }
            .data-row div {
                padding: 6px;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>Ver practica de Materias</h1>
</header>

<div class="container">
    <?php
    include ("../../conexion.php");
    //por motivos de falta de bases de datos en mi cuenta de secion mas basica solo tendre dos bases de datos
    //todos los que incluyan conexion_practica.php seran cambiados a
    // conexion.php
    // Crear conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Mostrar formularios de selección y tablas
    if (!isset($_POST['table'])) {
        // Obtener la lista de tablas
        $sql = "SHOW TABLES";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo '<form action="" method="post">';
            echo '<div class="form-group">';
            echo '<label for="table">Selecciona una tabla:</label>';
            echo '<select name="table" id="table" required>';
            while ($row = $result->fetch_assoc()) {
                foreach ($row as $table) {
                    echo "<option value=\"$table\">$table</option>";
                }
            }
            echo '</select>';
            echo '</div>';
            echo '<button type="submit">Mostrar Datos</button>';
            echo '</form>';
        } else {
            echo "<p>No se encontraron tablas.</p>";
        }
    } else {
        $table = $_POST['table'];

        // Obtener datos de la tabla seleccionada
        $sql = "SELECT nombre_docente, sigla, documento_docente, fecha_entrega, nota_practica, nota_teoria, titulo, asunto FROM $table";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<h2>Datos de la tabla $table</h2>";
            echo '<div class="vertical-table">';
            while ($row = $result->fetch_assoc()) {
                $documento = $row['documento_docente'];
                echo '<div class="data-row">';
                echo '<div><span class="data-label">Nombre Docente:</span> ' . $row['nombre_docente'] . '</div>';
                echo '<div><span class="data-label">Sigla:</span> ' . $row['sigla'] . '</div>';
                echo '<div><span class="data-label">Documento:</span> <a href="../../secion_docentes/documentacion_docentes/documentos_practicas/uploads/' . basename($documento) . '" download>Descargar</a></div>';
                echo '<div><span class="data-label">Fecha de Entrega:</span> ' . $row['fecha_entrega'] . '</div>';
                echo '<div><span class="data-label">Nota Práctica:</span> ' . $row['nota_practica'] . '</div>';
                echo '<div><span class="data-label">Nota Teoría:</span> ' . $row['nota_teoria'] . '</div>';
                echo '<div><span class="data-label">Título:</span> ' . $row['titulo'] . '</div>';
                echo '<div><span class="data-label">Asunto:</span> ' . $row['asunto'] . '</div>';
                echo '<hr>'; // Línea horizontal para separar registros
                echo '</div>';
            }
            echo '</div>';
        } else {
            echo "<p>No hay datos disponibles para la tabla $table.</p>";
        }
    }

    $conn->close();
    ?>
</div>

</body>
</html>

