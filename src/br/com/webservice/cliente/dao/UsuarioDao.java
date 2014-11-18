package br.com.webservice.cliente.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.webservice.cliente.bean.Usuario;

public class UsuarioDao {

	Connection conexao;
	
	public UsuarioDao(){
		this.conexao = new ConnectionFactory().getConnection();
	}
	
	public void adicionar(Usuario usuario){
		String sql = "insert into usuario (idUser, nome, foto) value(?,?,?)";
		try {
			PreparedStatement stmt = this.conexao.prepareStatement(sql);
			stmt.setLong(1, usuario.getIdUser());
			stmt.setString(2, usuario.getNome());
			stmt.setString(3, usuario.getFoto());			
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public Usuario getUsuario(Long id){
		String sql = "select * from usuario where idUser = ?";
		try {
			PreparedStatement stmt = this.conexao.prepareStatement(sql);
			stmt.setLong(1, id);
			
			ResultSet result = stmt.executeQuery();
			Usuario user = new Usuario();
			while(result.next()){
				user.setNome(result.getString("nome"));
				user.setIdUser(result.getLong("idUser"));
			}
			stmt.close();
			return user;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean hasUsuario(Long id){
		if(getUsuario(id)!=null){
			return true;
		}
		else{
			return false;
		}
	}
}
