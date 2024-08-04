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

public class Launch8 extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ApplicationContext cxt=new ClassPathXmlApplicationContext("config.xml");
		ReadAdmissionImp rai=cxt.getBean("rdi",ReadAdmissionImp.class);
		List<NewAdmission>al= rai.ReadAll();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("readall");
		mv.addObject("al",al);
		
		return mv;
	}

}
