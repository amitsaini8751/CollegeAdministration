package com.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.UpdateAdmissionImp;

public class Launch9 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String RegistrationNumber=request.getParameter("sregistrationNumber");
		String Studentname=request.getParameter("sname");
		String Fathername=request.getParameter("sfname");
		String Mothername=request.getParameter("smname");
		String Course=request.getParameter("scourse");
		String Subject=request.getParameter("ssubject");
		String Dob=request.getParameter("sdob");
		String Aadhar=request.getParameter("saadhar");
		String Batchfrom=request.getParameter("sbatchfrom");
		String Batchto=request.getParameter("sbatchto");
		String Addressline1=request.getParameter("sadd1");
		String Addressline2=request.getParameter("sadd2");
		String City=request.getParameter("scity");
		String District=request.getParameter("sdistrict");
		String State=request.getParameter("sstate");
		String PIN=request.getParameter("spin");
		
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		UpdateAdmissionImp uai=cxt.getBean("uai",UpdateAdmissionImp.class);
		uai.Update(RegistrationNumber, Studentname, Fathername, Mothername, Course, Subject, Dob, Aadhar, Batchfrom, Batchto, Addressline1, Addressline2, City, District, State, PIN);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		mv.addObject("msg"," Successfully Updated...");
		
		
		return mv;
	}

}
