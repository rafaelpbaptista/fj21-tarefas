package br.com.caelum.tarefas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() throws SQLException {
		System.out.println("[INFO] Conectando... ");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("conectado!");
		} catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}

		return DriverManager.getConnection("jdbc:mysql://localhost/fj21",
				"root", "");
	}

}
