package com.Controller.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ReadAllRowMapper implements RowMapper<NewAdmission>{

	@Override
	public NewAdmission mapRow(ResultSet rs, int rowNum) throws SQLException {
		NewAdmission na=new NewAdmission();
		na.setRegistration_Number(rs.getString(1));
		na.setName(rs.getString(2));
		na.setFatherName(rs.getString(3));
		na.setMotherName(rs.getString(4));
		na.setCourse(rs.getString(5));
		na.setSubject(rs.getString(6));
		na.setDOB(rs.getString(7));
		na.setAadhar(rs.getString(8));
		na.setBatchFrom(rs.getString(9));
		na.setBatchTo(rs.getString(10));
		na.setAdddressLine1(rs.getString(11));
		na.setAddressLine2(rs.getString(12));
		na.setCity(rs.getString(13));
		na.setDistrict(rs.getString(14));
		na.setState(rs.getString(15));
		na.setPIN(rs.getString(16));
		return na;
	}

	

}
