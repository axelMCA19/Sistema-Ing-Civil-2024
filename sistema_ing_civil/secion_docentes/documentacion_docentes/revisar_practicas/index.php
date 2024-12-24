




<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Prácticas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #2196F3; /* Azul */
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
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: center;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group select {
            width: 100%;
            max-width: 300px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin: 0 auto;
        }
        .horizontal-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        .view-btn, .save-btn {
            background-color: #2196F3;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
        }
        .view-btn:hover, .save-btn:hover {
            background-color: #1976D2;
        }
        a {
            color: #2196F3;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        @media (max-width: 768px) {
            th, td {
                padding: 8px;
                font-size: 14px;
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
            .horizontal-table {
                font-size: 12px;
            }
            .form-group select {
                width: 100%;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>Gestión de Prácticas de Universitarios</h1>
</header>

<div class="container">
    <?php
    include ("../../../conexion_recepcion_practica.php");
    // Crear conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Procesar actualización de notas
    if (isset($_POST['update']) && isset($_POST['table'])) {
        $table = $_POST['table']; // Asegúrate de capturar el nombre de la tabla
        $ids = $_POST['id'];
        $nota_practica = $_POST['nota_practica'];
        $nota_teoria = $_POST['nota_teoria'];

        foreach ($ids as $index => $id) {
            $sql = "UPDATE $table SET nota_practica = ?, nota_teoria = ? WHERE id = ?";
            $stmt = $conn->prepare($sql);
            if ($stmt === false) {
                die("Error en la preparación de la consulta: " . $conn->error);
            }
            $stmt->bind_param('ssi', $nota_practica[$index], $nota_teoria[$index], $id);
            $stmt->execute();
        }
        echo "<p>Notas actualizadas correctamente.</p>";
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
        $table = $_POST['table']; // Capturar el nombre de la tabla

        // Obtener datos de la tabla seleccionada
        $sql = "SELECT id, nombre_docente, sigla, documento_entrega, fecha_entrega, nota_practica, nota_teoria, nombre_alumno, apellido_alumno, semestre, titulo, asunto FROM $table";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<h2>Datos de la materia $table</h2>";
            echo '<form action="" method="post">';
            echo '<input type="hidden" name="update" value="1">';
            echo '<input type="hidden" name="table" value="' . htmlspecialchars($table) . '">'; // Incluir el nombre de la tabla en el formulario
            echo '<table class="horizontal-table">';
            echo '<thead><tr><th>Nombre Docente</th><th>Sigla</th><th>Documento</th><th>Fecha de Entrega</th><th>Nota Práctica</th><th>Nota Teoría</th><th>Nombre Alumno</th><th>Apellido Alumno</th><th>Semestre</th><th>Título</th><th>Asunto</th></tr></thead>';
            echo '<tbody>';

            while ($row = $result->fetch_assoc()) {
                $documento = $row['documento_entrega'];
                echo '<tr>';
                echo '<td>' . htmlspecialchars($row['nombre_docente']) . '</td>';
                echo '<td>' . htmlspecialchars($row['sigla']) . '</td>';
                echo '<td><a href="../../../seccion_universitarios/entrega_practicas/uploads/' . htmlspecialchars(basename($documento)) . '" download>Descargar</a></td>';
                echo '<td>' . htmlspecialchars($row['fecha_entrega']) . '</td>';
                echo '<td><input type="text" name="nota_practica[]" value="' . htmlspecialchars($row['nota_practica']) . '"></td>';
                echo '<td><input type="text" name="nota_teoria[]" value="' . htmlspecialchars($row['nota_teoria']) . '"></td>';
                echo '<td>' . htmlspecialchars($row['nombre_alumno']) . '</td>';
                echo '<td>' . htmlspecialchars($row['apellido_alumno']) . '</td>';
                echo '<td>' . htmlspecialchars($row['semestre']) . '</td>';
                echo '<td>' . htmlspecialchars($row['titulo']) . '</td>';
                echo '<td><button class="view-btn" onclick="alert(\'' . htmlspecialchars($row['asunto']) . '\')">Ver</button></td>';
                echo '<input type="hidden" name="id[]" value="' . htmlspecialchars($row['id']) . '">';
                echo '</tr>';
            }

            echo '</tbody>';
            echo '</table>';
            echo '<button type="submit" class="save-btn">Guardar Cambios</button>';
            echo '</form>';
        } else {
            echo "<p>No hay datos disponibles para la tabla $table.</p>";
        }
    }

    $conn->close();
    ?>
</div>

</body>
</html>