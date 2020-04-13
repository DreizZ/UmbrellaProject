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


</style>

<header><center><p14 style= "color: white;font-family: Courier New; font-size: 30px"> Bem-Vindo ao Umbrella LTDA. </p14></center></header>
<br />
<br />
<br />



<%
Userr us = new Userr();
String login = request.getParameter("login");
String senha = request.getParameter("senha");
boolean status = us.verificarUsuario(login,senha);

if(us.result==true) {
	out.println("<div><p1>Login feito com sucesso " + us.nome + "</p1></div>");
	
}else {
	out.println("<p1>Login ou senha invalidos!</p1>");
}
%>


</center>
</body>
</html>