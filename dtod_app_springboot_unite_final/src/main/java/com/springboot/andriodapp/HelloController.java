package com.springboot.andriodapp;

import java.util.Date;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@GetMapping("/api/hello")
	public String hello() {
		return "안녕하세요. 현재 서버 시간은 " + new Date() + "입니다! \n";
	}
}
