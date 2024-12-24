<?php
session_start();
if ($_SERVER['REQUEST_METHOD']=="POST") {
    include ("../../../conexion.php");

    $errores= array();
    //print_r($_POST);

    $carnet=(isset($_POST['carnet']))?htmlspecialchars($_POST['carnet']):null;
    $password=(isset($_POST['password']))?$_POST['password']:null;

    
    if (empty($carnet)) {
        $errores['carnet']=  "Debes Ingresar tu carnet de identidad";
    }
if (empty($password)) {
    $errores['password']="la contraseña es obligatoria";
}


if (empty($errores)) {
    try {
        $pdo= new PDO('mysql:host='.$direccionservidor.';dbname='.$baseDatos,$usuarioBD,$contraseniaBD);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // para que el PDO maneje los errores de manera automatica 

        $sql="SELECT * FROM universitarios WHERE carnet=:carnet ";
        $sentencia=$pdo->prepare($sql);
        $sentencia->execute(['carnet'=>$carnet]);

        $usuarios= $sentencia->fetchAll(PDO::FETCH_ASSOC);
        //print_r($usuarios);

        $login=false;


        foreach ($usuarios as $user) {
            if(password_verify($password,$user["password"])){
        //los valores que estan despues del igual en los corchetes son de la base de datos
                $_SESSION['usuario_id']= $user['id'];
                $_SESSION['universitario_nombre']=$user['nombres'];
                $_SESSION['universitario_apellido']=$user['apellidos'];
                $_SESSION['semestre']=$user['semestre'];
                $_SESSION['carnet']=$user['carnet'];
                $_SESSION['codigo_universitario']=$user['codigo_universitario'];
                $login=true;
            }
        }

        //aqui lo que quiero es recibir sus datos para mostraselo en su perfil del afiliado y de esta manera tenderemos esten su datos macados co su foto de perfil 
        //su codigo de afiliado y de esta manera que tenga un mayor y amplio detalle de lo que este pasado el usuario asi que continuaremoso de la forma mas sencilla y llana posible



        if ($login) {
            echo "existe el usuario en la base datos";
            header("Location:../../../seccion_universitarios/index.php");
        }else {
            echo "El usuario y contraseña no estan registrados";
        }

    } catch (PDOException $e) {
    }
}else {
    foreach($errores as $errror){
        echo "<br>" .$errror."<br>";
        
    }
    echo "<br><a href='login.html'>regresar al inicio de seción</a>";
}
}

?>
