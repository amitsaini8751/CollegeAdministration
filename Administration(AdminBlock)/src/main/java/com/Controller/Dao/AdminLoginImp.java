package com.Controller.Dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class AdminLoginImp extends AdminLogin {
	
	JdbcTemplate JdbcTemplate;
	

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
	String result="Failed";
	List<AdminLogin> al;
	public String check(String username,String password)
	{
		String sql="select * from adminlogin where username=?";
		
		
		  al=JdbcTemplate.query(sql,new AdminLoginRowMapper() ,username);
		
		if(al!=null) 
		{
			for(AdminLogin adl:al)
			{
			
			if(adl.getAdminUserPassword().equals(password))
			{
				result="Exists";
			}
			else {
			result="wrongpass";
			}
			}	
		}
		/*else {
			result="failed";
		}
		*/
	
		return result;
		
	}
   

}
