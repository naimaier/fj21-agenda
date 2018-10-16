package br.com.caelum.dao;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.caelum.jdbc.ConnectionFactory;
import br.com.caelum.model.Contato;

public class ContatoDao {
	public void adiciona(Contato contato) {
		try {
			Connection connection = new ConnectionFactory().getConnection();
			System.out.println("Conexao Aberta");
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
