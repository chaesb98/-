package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/member/*")

public class MemberController {

	private MemberService service;
	
	@RequestMapping("/member/main")
	public String main() {
		return "/member/main";
	}
	
	@RequestMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@RequestMapping("/member/modify")
	public String update() {
		return "/member/modify";
	}
	
	@RequestMapping("/member/register")
	public String register() {
		return "/member/register";
	}
	
	
	@RequestMapping("/member/forgot-id")
	public String forgot_id() {
		return "/member/forgot-id";
	}
	
	@RequestMapping("/member/forgot-password")
	public String forgot_password() {
		return "/member/forgot-password";
	}
	
	@PostMapping("/member/register1")
	public void register1(MemberVO member, Model model) {
		log.info("register(등록) : " + member);

		member.address();

		model.addAttribute("member_true", member);
		
		log.info(member.getId());

		MemberVO f_member = service.read(member.getId());

		model.addAttribute("member_false", f_member);

		// return "redirect:/index.jsp"; // 등록이 완료된 후 이동할 페이지
	}

	@PostMapping("/member/register2")
	public void register2(MemberVO member, Model model) {
		log.info("register(등록2) : " + member);
		
		service.register(member);
		model.addAttribute("result", "success");

		// return "redirect:/index.jsp"; // 등록이 완료된 후 이동할 페이지
	}
	
	@PostMapping("/member/modify")
	public String modify(MemberVO member, Model model, HttpServletRequest request) {
		log.info("데이터 수정을 실행합니다!");
		member.address();
		log.info("수정데이터 : " + member);
		HttpSession session = request.getSession();
		service.modify(member);
		log.info(member);
		session.setAttribute("session", member);
		
		return "redirect:/member/modify";
	}


	@GetMapping("/find_id")
	public void findId(@RequestParam("name") String name, @RequestParam("email") String email, Model model) {
		log.info("Id 조회 처리");
		model.addAttribute("result", service.findId(name, email));
	}

	@GetMapping("/find_password")
	public void findPassword(@RequestParam("id") String id, @RequestParam("email") String email, Model model) {
		log.info("Id 조회 처리");
		model.addAttribute("result", service.findPassword(id, email));
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("id") String id, @RequestParam("password") String password, HttpServletRequest request) {
		log.info("로그인 처리");
		MemberVO vo = service.login_read(id, password);
		log.info(vo);
		if (vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("session", vo);
			// session.setMaxInactiveInterval(10);
		}
		return "redirect:/";
	}
	
	@PostMapping("/login_check")
	public void login_check(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {
		log.info("로그인 체크");
		MemberVO vo = service.login_read(id, password);
		log.info(vo);
		model.addAttribute("check",vo);
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:/member/login";
	}
	
	
	@PostMapping("/remove_account")
	public String remove_acount(@RequestParam("id") String id, HttpServletRequest request) {
	    // 새로 생성하지 않는 조건(false)로 세션을 조회한다
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate(); // 세션 정보를 삭제한다
	        service.remove(id);
	    }
	    return "redirect:/member/login";
	}
	
	

	
}
