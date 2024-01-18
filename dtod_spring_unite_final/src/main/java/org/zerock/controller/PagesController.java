package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/pages/*")
@AllArgsConstructor
public class PagesController {

	
	// 회사소개
	@GetMapping("/about")
	public void about(){
		
	}
	
	// 찾아오시는 길
	@GetMapping("map")
	public void map() {
		
	}
	
	// 상품소개
	@GetMapping("product")
	public void product() {
		
	}
	
	// qna
	@GetMapping("qna")
	public void qna() {
		
	}
}
