package br.com.ajc.venda;

public class Usuario {
    
    private int id;
    private String nome;
    private String login;
    private String senha;
    private String stats_gc;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getStats_gc() {
		return stats_gc;
	}
	public void setStats_gc(String stats_gc) {
		this.stats_gc = stats_gc;
	}
    
    
}
