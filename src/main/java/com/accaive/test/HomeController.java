package com.accaive.test;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class HomeController {
	
	@Autowired
	private pDAO pDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
	//처음 home 페이지	
		
		//모든 정보가 나올 수 있도록
		pDAO.getAllJJAL(req);
		pDAO.checkLogin(req);
		req.setAttribute("contentPage", "home.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/upload.JJAL", method = RequestMethod.GET)
	public String uploadJjalGo(HttpServletRequest req) {
	//짤 업로드 하는 창으로 가는 것
		pDAO.checkLogin(req);
		req.setAttribute("contentPage", "upload.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/jjal.upload", method = RequestMethod.POST)
	public String regJJAL(Jjal j,HttpServletRequest req) {
		
		//정보 등록하는 일 하기
		pDAO.regJJAL(j,req);
		pDAO.checkLogin(req);
		req.setAttribute("contentPage", "upload.jsp");

		return "index";
	}
	
	@RequestMapping(value = "/detailPage.go", method = RequestMethod.GET)
	public String detailPageGo(HttpServletRequest req,Jjal j) {
		
		//디테일 페이지로 이동하기
		pDAO.getJJAL(req,j);
		pDAO.checkLogin(req);
		req.setAttribute("contentPage", "detailPage.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/logingo", method = RequestMethod.GET)
	public String logingo(HttpServletRequest req) {
		//로그인 페이지로 이동
		
		pDAO.checkLogin(req);
		req.setAttribute("contentPage", "loginpage.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/logingo.do", method = RequestMethod.POST)
	public String loginDo(HttpServletRequest req, Member m) {
		//로그인 하기
		
		if (pDAO.login(req,m)) {
			pDAO.getAllJJAL(req);
			req.setAttribute("contentPage", "home.jsp");
		}else {
			req.setAttribute("r", "ID 또는 PW가 잘못 되었습니다.");
			req.setAttribute("contentPage", "loginpage.jsp");
		}
		pDAO.checkLogin(req);
		
		return "index";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		//로그아웃 하기
		
		pDAO.logout(req);
		
		pDAO.checkLogin(req);
		pDAO.getAllJJAL(req);
		req.setAttribute("contentPage", "home.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/regGo", method = RequestMethod.GET)
	public String regGo(HttpServletRequest req) {
		//회원가입 페이지로 이동
		
		pDAO.logout(req);
		
		pDAO.checkLogin(req);
		req.setAttribute("contentPage", "regPage.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/reg.do", method = RequestMethod.POST)
	public String regDo(HttpServletRequest req,Member m) {
		//회원가입 페이지로 이동
		
		pDAO.join(req,m);
		pDAO.checkLogin(req);
		pDAO.getAllJJAL(req);
		req.setAttribute("contentPage", "home.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(HttpServletRequest req,Jjal j) {
		//내용찾기
		
		pDAO.checkLogin(req);
		pDAO.searchJJAL(req,j);
		req.setAttribute("contentPage", "home.jsp");
		
		return "index";
	}
	
	@ResponseBody
	@RequestMapping(value = "/img.down", method = RequestMethod.POST)
	public byte[] download(@RequestParam String img, HttpServletResponse response) throws IOException {
		
		return pDAO.download(img,response);
	}
}
