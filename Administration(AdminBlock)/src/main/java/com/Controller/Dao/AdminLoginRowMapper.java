package com.Controller.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AdminLoginRowMapper implements RowMapper<AdminLogin>{

	@Override
	public AdminLogin mapRow(ResultSet rs, int rowNum) throws SQLException {
		AdminLogin alog=new AdminLogin();
		alog.setAdminUserName(rs.getString(1));
		alog.setAdminUserPassword(rs.getString(2));
		return alog;
	}

}
