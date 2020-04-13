package br.com.ajc.venda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Userr {

	public String nome = "";
	public boolean result = false;
	public boolean verificarUsuario(String login, String senha) {

		Connection con = ConnectionFactoryv.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {

			stmt = con.prepareStatement("SELECT nome FROM clientes WHERE login = ? and senha = ?");
			stmt.setString(1, login);
			stmt.setString(2, senha);

			rs = stmt.executeQuery();

			if (rs.next()) {
				result = true;
				nome = rs.getString("nome");
			}
		} catch (SQLException ex) {
			Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			ConnectionFactoryv.closeConnection(con, stmt, rs);
		}

		return result;

	}

}