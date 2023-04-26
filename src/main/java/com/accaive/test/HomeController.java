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
	//처음 home 페이지	
		
		//로그인 확인
		
		//모든 정보가 나올 수 있도록
		pDAO.getAllJJAL(req);
		req.setAttribute("contentPage", "home.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/upload.JJAL", method = RequestMethod.GET)
	public String uploadJjalGo() {
	//짤 업로드 하는 창으로 가는 것
		
		return "upload";
	}
	
	@RequestMapping(value = "/jjal.upload", method = RequestMethod.POST)
	public String regJJAL(Jjal j,HttpServletRequest req) {
		
		//정보 등록하는 일 하기
		pDAO.regJJAL(j,req);

		return "upload";
	}
	
	@RequestMapping(value = "/detailPage.go", method = RequestMethod.GET)
	public String detailPageGo(HttpServletRequest req,Jjal j) {
		
		//디테일 페이지로 이동하기
		pDAO.getJJAL(req,j);
		req.setAttribute("contentPage", "detailPage.jsp");
		
		return "index";
	}
	
	
}
