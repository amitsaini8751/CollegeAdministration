package com.Controller.Dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class ReadAdmissionImp extends NewAdmission {
JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	List<NewAdmission> al;
	public List<NewAdmission> ReadAll()
	{
		String sql="select * from student_record ";
		
		
		  al=JdbcTemplate.query(sql,new ReadAllRowMapper());
		
		
	
		return al;
		
	}
	
	public NewAdmission ReadOne(String Registration_Number)
	{
		NewAdmission al;
		String sql="select * from student_record where Registration_Number=?";
		
		try {
		 al=JdbcTemplate.queryForObject(sql,new ReadAllRowMapper(),Registration_Number);
		}
		catch(Exception e)
		{
			al=null;
		}
		
		return al;
		
	}
   
	

}
