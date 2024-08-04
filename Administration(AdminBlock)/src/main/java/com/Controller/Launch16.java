package com.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.ChangePassword;

public class Launch16 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ModelAndView mv;
		String newPassword=request.getParameter("newpassword");
		String conformPassword=request.getParameter("conformpassword");
		if(newPassword.equals(conformPassword))
		{
			ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
			ChangePassword cp=cxt.getBean("cp",ChangePassword.class);
			cp.Adminpasschange(newPassword);
			 mv=new ModelAndView();
			mv.setViewName("home");
			mv.addObject("msg","Password Successfully Changed");
			
		}
		else
		{
			
			 mv=new ModelAndView();
			mv.setViewName("changepassword");
			mv.addObject("msg","Password doesn't match");
			
		}
		
		
		return mv;
	}

}
