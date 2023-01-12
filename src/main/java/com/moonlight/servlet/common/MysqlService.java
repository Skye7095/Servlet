package com.moonlight.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	// 접속주소, 아이디, 비밀번호
	private final String url = "jdbc:mysql://localhost:3306/hkim7095";
	private final String userId = "root";
	private final String password = "1013";
	
	private Connection connection;
	private Statement statement;
	
	private MysqlService() {
		
	}
	
	// 객체 생성을 관리하는 메소드 
	public static MysqlService getInstance() {
		// 하나의 객체만 생성
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	// 접속기능
	public void connect() {
		// 접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	// 쿼리 수행기능 select
	public ResultSet select(String query) {
		try {
			return statement.executeQuery(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
	}
	
	// 쿼리 수행 기능 insert, update, delete
	public int update(String query) {
		try {
			return statement.executeUpdate(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			return -1;
		}
	}
	
	// 접속 끊는 메소드
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
