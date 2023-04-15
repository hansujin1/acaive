package com.accaive.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//기능이 되도록 하는 Java
@Service
public class pDAO {
	
	@Autowired
	private SqlSession ss;

	public void getAllJJAL(HttpServletRequest req) {
		//Show List
		
		accaive mm = ss.getMapper(accaive.class);
		List<Jjal> JJAL = mm.getAllPricture();
		
		req.setAttribute("picture", JJAL);
	}

	public void regJJAL(Jjal j, HttpServletRequest req) {
		//JJAL UPLOAD
		
		try {
			
			String path = req.getSession().getServletContext().getRealPath("resources/img");
			MultipartRequest mr = new MultipartRequest(req, path,31457280,"utf-8",new DefaultFileRenamePolicy());
			
			String img = mr.getFilesystemName("img");
			String tag = mr.getParameter("tag");
			
			j.setImg(img);
			j.setTag(tag);
			
			accaive mm = ss.getMapper(accaive.class);
			if (mm.regJJAL(j) > 0) {
				req.setAttribute("r", "업로드 성공했습니다.");
			}else {
				req.setAttribute("r", "업로드 실패했습니다..");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	
	
	

	
}
