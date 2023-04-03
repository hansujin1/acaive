package com.accaive.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@Autowired
	private pDAO pDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		//모든 정보가 나올 수 있도록
		pDAO.getAllJJAL(req);
		
		return "index";
	}
	
	@RequestMapping(value = "/upload.JJAL", method = RequestMethod.GET)
	public String uploadJjal() {
		
		return "upload";
	}
	
}
