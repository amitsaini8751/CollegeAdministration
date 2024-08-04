package com.Controller.Dao;

import org.springframework.jdbc.core.JdbcTemplate;

public class DeleteAdmissionImp {
JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	public void deleteAdmission(String registrationNumber)
	{
		 String sql="delete from student_record where Registration_Number=?";
		 JdbcTemplate.update(sql,registrationNumber);
		 
		 String sql1="delete from library_student_login where Registration_Number=?";
		 JdbcTemplate.update(sql1,registrationNumber);
		 
		 
		 
	}

}
