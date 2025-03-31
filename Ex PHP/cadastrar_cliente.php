<?php
function limpar_texto($str){
    return preg_replace("/[^0-9]/", "", $str);

}

if(count($_POST) > 0){

include('conexao.php');

$erro = false;
$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$nascimento = $_POST['nascimento'];
}

//empty — Determina se uma variável está vazia
if(empty($nome)){
    $erro = "Preencha o nome!";
}

if(empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)){
    $erro = "Preencha o email!"
}

if(!empty($nascimento)){
    $pedacos = explode('/', $nascimento);
}

if(count($pedacos) == 3){
    $telefone = limpar_texto($telefone);
    if(strlen($telefone) != 11){
        $erro = "O telefone deve ser preenchido no padrão (11) 98888-8888";
    }
}

if($erro){
    echo "<p><b>ERRO: $erro</b></p>";
}else{
    $sql_code = "INSERT INTO clientes (nome, email, telefone, nascimento, data)
    VALUES ('$nome', '$email', $telefone', '$nascimento', NOW())";
    $deu_certo = $mysqli -> query($sql_code) or die($mysqli->error);
    if($deu_certo){
        echo "<p><b> Cliente cadastrado com sucesso!!!"</b></p>;
    }
}
?>

<!DOCTYPE html>
<html lang = "pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>

<body>
'''''''''''''111111111111111111111111111111111111111111111111111111111111111111111111111111111111   '
<form> method = "POST" action="">
    <P>
        <label> nome: </label>
        <input value="<?php if(isset($_POST['nome'])) echo $_POST['nome']; ?>" name = "nome" type = "text">
    </P>

    <P>
        <label> Email: </label>
        <input value="<?php if(isset($_POST['email'])) echo $_POST['email']; ?>" name = "email" type = "text">
    </P>

    <P>
        <label> Telefone: </label>
        <input value="<?php if(isset($_POST['telefone'])) echo $_POST['telefone']; ?>" name = "telefone" type = "text">
    </P>

    <P>
        <label> Data de nascimento: </label>
        <input value="<?php if(isset($_POST['nascimento'])) echo $_POST['nascimento']; ?>" name = "nascimento" type = "text">
    </P>

    <P>
        <button type="submit">Salvar Cliente</button>
    </P>