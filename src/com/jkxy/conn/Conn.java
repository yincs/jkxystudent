package com.jkxy.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {
	public Connection getCon(){
		try {
			Class.forName("com.mysql.jdbc.Driver");//加载驱动，必须加载
			String url = "jdbc:mysql://localhost/jkxystudent?useUnicode=true&characterEncoding=utf-8";
			String user = "root";
			String password = "123456";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		} catch ( SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
}
