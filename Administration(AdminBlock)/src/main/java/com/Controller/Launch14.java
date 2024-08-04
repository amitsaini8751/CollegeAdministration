package com.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.DeleteAdmissionImp;

public class Launch14 extends AbstractController {

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String registrationNumber=(String)request.getParameter("sregistrationNumber");
		
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		DeleteAdmissionImp dai=cxt.getBean("dai",DeleteAdmissionImp.class);
		dai.deleteAdmission(registrationNumber);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		mv.addObject("msg"," Successfully Deleted");
		
		return mv;
	}

}
