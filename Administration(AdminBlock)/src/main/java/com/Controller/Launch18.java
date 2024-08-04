package com.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.Controller.Dao.LibrarianAc;

public class Launch18 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String uname=request.getParameter("uname");
		String password=request.getParameter("upassword");
		
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		LibrarianAc lac=cxt.getBean("lac",LibrarianAc.class);
		lac.accountcreation(uname, password);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		mv.addObject("msg","Account Created");
		return mv;
	}

}
