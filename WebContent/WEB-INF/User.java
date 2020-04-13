package br.com.ajc.venda;

import java.sql.*;

public class User {
	private Connection connection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url = "jdbc:mysql://localhost:3306/teste?user=root&password=ff17&useSSL=false";
			conn = DriverManager.getConnection(url);
			System.out.println("Conectando...");
		} catch (Exception e) { }
		return conn;}
	public String nome = "";
	public boolean result = false;
	public boolean verificarUsuario(String login, String senha) {
		String sql = "";
		Connection conn = connection();
		//sql += "SELECT nome FROM clientes WHERE login =" + login + "AND senha =" + senha;
		//sql += "select nome from clientes";
		sql += "where login = " + "'" + login + "'";
		sql += " and senha = " + "'" + senha + "';";
		sql += "INSERT INTO `teste`.`clientes` (`id`, `nome`, `login`, `senha`) VALUES ('4', 'teste', 'teste', 'teste');";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				result = true;
				nome = rs.getString("nome");}
		} catch (Exception e) { }
		return result; }
}