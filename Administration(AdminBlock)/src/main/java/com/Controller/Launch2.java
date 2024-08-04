package com.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.AdminLoginImp;

public class Launch2 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String username=request.getParameter("adminUserName");
		String password=request.getParameter("adminUserPassword");
		
		ApplicationContext cxt= new ClassPathXmlApplicationContext("config.xml");
		AdminLoginImp ali=cxt.getBean("adi",AdminLoginImp.class);
		String result=ali.check(username,password);
		HttpSession hs=request.getSession();
		ModelAndView mv=new ModelAndView();
		if(result.equals("Exists"))
		{
		    hs.setAttribute("securitycheck",username);
			mv.setViewName("home");
		}
		else if(result.equals("wrongpass"))
		{
			mv.addObject("msgwrongpass","Invalid password");
			mv.setViewName("index");
		}
		else
		{
			mv.addObject("msgnotfound","username and password is not exists");
			mv.setViewName("index");
		}
		
		
		
		return mv;
	}

}
