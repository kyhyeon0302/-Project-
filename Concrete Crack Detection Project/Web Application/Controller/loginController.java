package com.hyeon.app;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
@RequestMapping("/login")
public class LoginController {
	@GetMapping("/login")
	public String loginForm() {
		return "loginForm";
	}
	
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
				
		session.invalidate(); //1.세션을 종료	
		return "redirect:/"; //2.홈으로 이동한다
		
	}



	@PostMapping("/login")
	public String login(String id, String pwd, boolean rememberID,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
		

		
		if(!loginCheck(id, pwd)) { // 1. 아이디와 패스워드를 알면확인
			// 2-1 아이디와 패스워드가 일치하지 않으면, loginForm으로 이동
			String msg = URLEncoder.encode("아이디 또는 패스워드가 일치하지 않습니다.", "utf-8");
			return "redirect:/login/login?msg="+msg;

		}
		// 2-2 아이디와 패스워드가 일치하면
		// 섹션 객체 얻어 오기
		HttpSession session = request.getSession();
		// 섹션 객체에 id를 저장한다.
		session.setAttribute("id", id);
		
		if(rememberID) {
			//쿠키를 생성
			Cookie cookie = new Cookie("id", id);
			// 2) 응답에 저장
			response.addCookie(cookie);


		} else {
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(0); //쿠키를 삭제
			response.addCookie(cookie);

		}

		// 3 홈으로 이동
		return "redirect:/ ";


	}



	private boolean loginCheck(String id, String pwd) {
		return "asdf".equals(id) && "1234".equals(pwd);

	}

}
