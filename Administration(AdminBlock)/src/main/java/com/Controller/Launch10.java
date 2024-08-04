package com.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.NewAdmission;
import com.Controller.Dao.ReadAdmissionImp;

public class Launch10 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String reg=request.getParameter("registration_number");
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		ReadAdmissionImp rai=cxt.getBean("rdi",ReadAdmissionImp.class);
		NewAdmission al= rai.ReadOne(reg);
		ModelAndView mv=new ModelAndView();
		if(al!=null)
		{
		
		mv.setViewName("update");
		mv.addObject("al",al);
		}
		else
		{
			mv.setViewName("update1");
			mv.addObject("msg","Registration Number is not Exists");
		}
		
		return mv;
	}

}
