package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public Connection getConnection() {
		try {
			//Registrar o driver. Exigencia do Tomcat 7+ para evitar vazamento de memória
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/fj21", "root", "admin");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}
