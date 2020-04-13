package br.com.ajc.venda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CadastroDAO {
	
	public void adiciona (Cadastro cadastro) {
		
		Connection con = ConnectionFactoryv.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
	
	try {
	
	stmt = con.prepareStatement("insert into clientes" + "(nome,login,senha)" + "values (?,?,?)");
	stmt.setString(1, cadastro.getNome());
	stmt.setString(2, cadastro.getLogin());
	stmt.setString(3, cadastro.getSenha());
	
	stmt.execute();
	stmt.close();
	
	System.out.println ("Gravado");
	stmt.close();
	}
	catch (SQLException ex) {
		Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
	} finally {
		ConnectionFactoryv.closeConnection(con, stmt, rs);
	}

 }
}








/*package br.com.ajc.venda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CadastroDAO {

	private Connection connection;

	
	Connection con = ConnectionFactoryv.getConnection();
	PreparedStatement stmt = null;

	public void adiciona(Cadastro cadastro) {

		String sql = "insert into contatos" + "(nome,login,senha)" + "values (?,?,?)";

		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getLogin());
			stmt.setString(3, cadastro.getSenha());

			stmt.execute();
			stmt.close();

			System.out.println("Gravado");
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}*/