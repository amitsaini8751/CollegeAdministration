package com.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.NewAdmission;
import com.Controller.Dao.ReadAdmissionImp;

public class Launch5 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		ReadAdmissionImp rai=cxt.getBean("rdi",ReadAdmissionImp.class);
		List<NewAdmission>al= rai.ReadAll();
		int nextRegistrationNumber=0;
		for(NewAdmission na:al)
		{
			 nextRegistrationNumber=Integer.parseInt(na.getRegistration_Number());
		}
		ModelAndView mv=new ModelAndView();
		 nextRegistrationNumber=nextRegistrationNumber+1;
		mv.setViewName("result");
		mv.addObject("rnumber",nextRegistrationNumber);
		
		return mv;
	}

}
