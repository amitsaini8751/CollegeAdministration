package com.Controller.Dao;

import org.springframework.jdbc.core.JdbcTemplate;

public class ChangePassword {
JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
   
	public void Adminpasschange(String password)
	{
		String sql="update adminlogin set password=?";
		JdbcTemplate.update(sql,password);
		
		
	}
}
