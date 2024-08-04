package com.Controller.Dao;


import org.springframework.jdbc.core.JdbcTemplate;

public class UpdateAdmissionImp extends NewAdmission {
	
	JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	
	public void Update(String Registration_Number,String Name,String FatherName,String MotherName,String Course,String Subject,String DOB,String Aadhar,String BatchFrom,String BatchTo,String AddressLine1,String AddressLine2,String City,String District,String State,String PIN)
	{
		String sql="update student_record set Name=?,Father_Name=?,Mother_Name=?,Course=?,Subject=?,DOB=?,Aadhar_No=?,Batch_From=?,Batch_To=?,Address_Line1=?,Address_Line2=?,City=?,District=?,State=?,PIN=? where Registration_Number=?";
		
		 JdbcTemplate.update(sql,Name,FatherName,MotherName,Course,Subject,DOB,Aadhar,BatchFrom,BatchTo,AddressLine1,AddressLine2,City,District,State,PIN,Registration_Number);
		
	
	String sql1="update library_student_login set Password=? where Registration_Number=?";
	
	
	 JdbcTemplate.update(sql1,Aadhar,Registration_Number);
	  
	 	
	}
   

}
