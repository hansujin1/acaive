package com.accaive.test;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//기능이 되도록 하는 Java
@Service
public class pDAO {
	
	@Autowired
	ServletContext servletContext;
	
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
			String explanation = mr.getParameter("explanation");
			
			Member member = (Member) req.getSession().getAttribute("loginMemeber");
			String empno = member.getEmpno();
			
			j.setImg(img);
			j.setTag(tag);
			j.setExplanation(explanation);
			j.setEmpno(empno);
			
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

	public void getJJAL(HttpServletRequest req, Jjal j) {
		// Detail page
		try {
			Jjal JJAL = ss.getMapper(accaive.class).getJjal(j);
			String tag = JJAL.getTag();
			String[] tagArrat = tag.split("#");
			req.setAttribute("picture", JJAL);
			req.setAttribute("tag", tagArrat);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public boolean login(HttpServletRequest req, Member m) {
		// DO login
		try {
			Member dbMember = ss.getMapper(accaive.class).getMemberId(m);
			
			if (dbMember != null) {
				if (m.getPw().equals(dbMember.getPw())) {
					// PW가 같다  -> 세션 생성
					req.getSession().setAttribute("loginMemeber", dbMember);
					req.getSession().setMaxInactiveInterval(60*60);
					
					return true;
				}else {
					//pw가 다르다
					return false;
				}
			}else {
				//ID가 존재하지 않는다.
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public void checkLogin(HttpServletRequest req) {
		// 로그인 체크
		if (req.getSession().getAttribute("loginMemeber") != null) {
			//세션 있음
			req.setAttribute("loginPage", "loginOK.jsp");
		}else {
			//세션 없음
			req.setAttribute("loginPage", "login.jsp");
		}
		
		
	}

	public void logout(HttpServletRequest req) {
		//로그 아웃
		req.getSession().setAttribute("loginMemeber", null);
		
	}

	public void join(HttpServletRequest req, Member m) {
		// 회원가입
		
				try {
					req.setCharacterEncoding("utf-8");
					
					if (ss.getMapper(accaive.class).join(m) == 1) {
						System.out.println("성공");
						login(req,m);
					}else {
						System.out.println("실패");
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		
	}

	public void searchJJAL(HttpServletRequest req, Jjal j) {
		// 짤 찾기 
		
		accaive mm = ss.getMapper(accaive.class);
		
		List<Jjal> JJAL = mm.getSearchPricture(j);
		
		req.setAttribute("picture", JJAL);
		
	}

	public byte[] download(String img, HttpServletResponse response) throws IOException {
		String savePath = servletContext.getRealPath("resources/img"); 
		System.out.println(savePath);
		File file = new File(savePath,img);
		
		byte[] bytes = FileCopyUtils.copyToByteArray(file);
		
		String fn = new String(file.getName().getBytes(),"utf-8");
		response.setHeader("Content-Disposition","attachment;filename=\""+fn+"\"");
		
		response.setContentLength(bytes.length);
		
		return bytes;
	}

	
	
	
	

	
}
