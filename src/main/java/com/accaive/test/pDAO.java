package com.accaive.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//기능이 되도록 하는 Java
@Service
public class pDAO {
	
	@Autowired
	private SqlSession ss;

	public void getAllJJAL(HttpServletRequest req) {
		
		accaive mm = ss.getMapper(accaive.class);
		List<Jjal> JJAL = mm.getAllPricture();
		
		req.setAttribute("picture", JJAL);
	}
	
	

	
}
