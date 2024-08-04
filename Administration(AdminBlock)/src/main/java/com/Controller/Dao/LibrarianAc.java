package com.Controller.Dao;

import org.springframework.jdbc.core.JdbcTemplate;

public class LibrarianAc {
JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	
	public void accountcreation(String username,String password)
	{
		String sql="insert into librarian_login values(?,?)";
		JdbcTemplate.update(sql,username,password);
	}

}
