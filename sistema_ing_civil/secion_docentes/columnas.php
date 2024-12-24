<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "documentos_practicas";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener todas las tablas
$sql = "SHOW TABLES";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_array()) {
        $table = $row[0];
        
        // Preparar el comando ALTER TABLE
        $alterSql = "ALTER TABLE `$table`
                     ADD COLUMN titulo VARCHAR(255) NOT NULL,
                     ADD COLUMN asunto TEXT NOT NULL";
        
        // Ejecutar el comando
        if ($conn->query($alterSql) === TRUE) {
            echo "Columnas añadidas a la tabla $table correctamente.<br>";
        } else {
            echo "Error al añadir columnas a la tabla $table: " . $conn->error . "<br>";
        }
    }
} else {
    echo "No se encontraron tablas en la base de datos.";
}

$conn->close();
?>
