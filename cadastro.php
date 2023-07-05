<?php
// Dados de conexão com o banco de dados
$servername = "localhost";
$username = "seu_usuario";
$password = "sua_senha";
$dbname = "nome_do_banco_de_dados";

// Conectando ao banco de dados
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Falha na conexão: " . $conn->connect_error);
}

// Recebendo os dados do formulário
$Nome Completo= $_POST['Nome Completo'];
$Email = $_POST['Email'];
$Nome de usuario = $_POST['Nome de usuario'];
$senha = $_POST['Senha'];
$Confirme senha = $_POST['Confirme senha'];
$CPF = $_POST['CPF'];
$CEP = $_POST['CEP']
$Endereco = $_POST['Endereço'];
$Complemento = $_POST['Complemento']

// Inserindo os dados na tabela de usuários
$sql = "INSERT INTO usuarios (Nome Completo, Email, Nome de usuario, Senha, Confirme senha, CPF, CEP, Endereço, Complemento) VALUES ('$Nome Completo', '$Email', '$Nome de usuario', '$Senha', '$Confirme senha', '$CPF', '$CEP', '$Endereço', '$Complemento')";
if ($conn->query($sql) === TRUE) {
  echo "Cadastro realizado com sucesso!";
} else {
  echo "Erro ao cadastrar: " . $conn->error;
}

// Fechando a conexão com o banco de dados
$conn->close();
?>