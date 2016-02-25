package com.jkxy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jkxy.conn.Conn;
import com.jkxy.model.entity.UserInfo;

public class UserService {
	private Connection mConn;
	private PreparedStatement mPreparedStatement;
	
	public UserService(){
		mConn = new Conn().getCon(); 
	}
	
	public boolean valiUser(UserInfo userInfo){
		if (userInfo == null) {
			return false;
		}
		try {
			mPreparedStatement = mConn.prepareStatement("select * from user_info where user_name=? and user_psd=?");
			mPreparedStatement.setString(1,"kelly");
			mPreparedStatement.setString(2, "123456");
			ResultSet rs = mPreparedStatement.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
