package com.springboot.dtod.pay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.dtod.pay.domain.PayVO;
import com.springboot.dtod.pay.service.PayService;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/admin/*")
public class PayController {
	private final PayService payService;
	
	@Autowired
	public PayController(PayService payService) {
		this.payService = payService;
	}
	
	@GetMapping("subscribe")
	public Page<PayVO> getAllPays(Pageable pageable){
		return payService.getAllPays(pageable);
	}
}
