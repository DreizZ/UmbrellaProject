package br.com.ajc.venda;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/adicionaContato")
public class AdicionaCadastro extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		//pegar os parametros request
		
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		// monta um objeto cadastro dentro do Padrão JavaBeans
		
		Cadastro cadastro = new Cadastro();
		cadastro.setNome(nome);
		cadastro.setLogin(login);
		cadastro.setSenha(senha);
		
		//Salva os dados dentro do padrão DAO
		
		CadastroDAO dao = new CadastroDAO();
		dao.adiciona(cadastro);
		
		//imprime que foi bem sucedido
		
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>Contato " + cadastro.getNome() + " adicionado com Sucesso!</h1>");
		out.print("</body>");
		out.print("</html>");
		
	}
	
}
