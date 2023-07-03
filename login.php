<?php
include'conexao.php';

session_start();

//verifica o formulário da tela de login
if($_SERVER["REQUEST_METHON"] === 'POST'){
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM usuario WHERE email = ? AND senha =?";

    $stmt = $conexao -> prepare ($sql);
    $stmt->bind_param ('ss', $email, $senha);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if($resultado->num_rows ===1){
        //login foi efetuado com sucesso.
        $_SESSION['email'] = $email;
        header("Location: login.html");]
        exit();

    }else{
        $erro = "Credenciais inválidas. Verrificar seu email e senha";
    }

}

$conexao->close();

?>