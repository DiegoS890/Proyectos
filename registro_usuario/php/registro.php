<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include __DIR__ . '/conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Capturar datos del formulario
    $nombre = $conn->real_escape_string($_POST['nombre']);
    $email = $conn->real_escape_string($_POST['email']);
    $password = $_POST['password'];
    
    // AGREGAR ESTOS CAMPOS
    $telefono = $conn->real_escape_string($_POST['telefono']);
    $direccion = $conn->real_escape_string($_POST['direccion']);
    // FIN DE CAMPOS AGREGADOS
    
    // Encriptar la contraseña
    $passwordHash = password_hash($password, PASSWORD_DEFAULT);
    
    // Insertar en la base de datos
    $sql = "INSERT INTO usuarios (nombre, email, password, telefono, direccion) VALUES ('$nombre', '$email', '$passwordHash', '$telefono', '$direccion')";
    
    if ($conn->query($sql)) {
        echo "<script>alert('✔ Usuario registrado correctamente'); window.location.href='../index.html';</script>";
    } else {
        echo "<script>alert('✘ Error al registrar: " . $conn->error . "'); window.history.back();</script>";
    }
}
?>