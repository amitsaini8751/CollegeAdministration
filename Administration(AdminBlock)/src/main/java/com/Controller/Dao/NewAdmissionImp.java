package com.Controller.Dao;


import org.springframework.jdbc.core.JdbcTemplate;

public class NewAdmissionImp extends NewAdmission {
	
	JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	
	public void Save(String Registration_Number,String Name,String FatherName,String MotherName,String Course,String Subject,String DOB,String Aadhar,String BatchFrom,String BatchTo,String AddressLine1,String AddressLine2,String City,String District,String State,String PIN)
	{
		String sql="insert into student_record values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		  JdbcTemplate.update(sql,Registration_Number,Name,FatherName,MotherName,Course,Subject,DOB,Aadhar,BatchFrom,BatchTo,AddressLine1,AddressLine2,City,District,State,PIN);
		
		
	
	String sql1="insert into library_student_login values(?,?)";
	
	
	  JdbcTemplate.update(sql1,Registration_Number,Aadhar);
		
		
	}
   

}
