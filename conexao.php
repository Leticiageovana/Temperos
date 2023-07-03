<?php
//configuração do bando de dados
$host= 'localhost';
$usuario= 'rsort';
$senha= 'root';
$banco= 'temperos';

//Criação da conexão
$conexao = new mysqli ($host, $usuario, $senha, $banco);

if($conexao->connect_error){
    die("Erro na conexão com o banco de dados:" .$conexao->connect_error);
}
?>