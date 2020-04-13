<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ACESSO UMBRELLA-LTDA</title>
<style> 
  body {
  background-image: url("ImagemFundo.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

input[type=text], select {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-family: 	Courier New;
}

input[type=password], select {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-family: Arial;
}

input[type=submit] {
  width: 30%;
  text-align: center;
  background-color: yellow;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-family: Arial, Helvetica, sans-serif;
}

input[type=submit]:hover {
  background-color: #ffe600e0;
}

.fundo {
  border-radius: 10px;
  background-color: rgba(0, 0, 0, 0.7);
  width: 20%;
  padding: 10px;
}
</style>
</head>
<body>
<header><center><p14 style= "color: white;font-family: Courier New; font-size: 30px"> Bem-Vindo ao Cadastro na Umbrella LTDA. </p14></center></header>
		<br><br>
		<br><br>
		<br><br>
		<br><br>
		<br><br>
		<br><br>
		 <center>
		<div class="fundo" >
		<form action="adicionaContato"method="post"><p15>
			<br><p14 style= "color: yellow; font-family: Courier New">NOME:</p14> <br><input type="text" name="nome"/><br />
			<br><p14 style= "color: yellow; font-family: Courier New">LOGIN:</p14> <br><input type="text" name="login"/><br />
			<br><p14 style= "color: yellow; font-family: Courier New">SENHA:</p14> <br><input type="password" name="senha"/><br />
			<input type="submit" value="Entrar" style="font-family: Courier New"/>
		</p15></form>
		</div>
          </center>

</body>
</html>