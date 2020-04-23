<%@page import="br.com.ajc.venda.Userr" %>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
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

div {
  border-radius: 10px;
  background-color: rgba(0, 0, 0, 0.7);
  width: 20%;
  padding: 10px;
}

p1 {
color: white;
font-family: Courier New;
font-size: 20px";
}

.button {
  border-radius: 4px;
  background-color: yellow;
  border: none;
  color: black;
  text-align: center;
  font-size: 15px;
  padding: 20px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>

<header><center><p14 style= "color: white;font-family: Courier New; font-size: 30px"> Bem-Vindo ao Umbrella LTDA. </p14></center></header>
<br />
<br />
<br />

<script>
function goBack() {
  window.history.back()
}
</script>

<%

Userr us = new Userr();

String login = request.getParameter("login");
String senha = request.getParameter("senha");
boolean status = us.verificarUsuario(login,senha);
if(us.result==true) {
	out.println("<p1><div>Login feito com sucesso " + us.nome + " e seu guarda-chuva está:" + us.stats + "</div></p1>");
} else {
	out.println("<p1><div>Login ou senha inválidos!</div></p1>");
	 %>
	<form action="acesso-contato.jsp"method="post">
		<button class="button"><span>Voltar</span></button>
	</form>
	<%
}
%>


	</center>
</body>
</html>