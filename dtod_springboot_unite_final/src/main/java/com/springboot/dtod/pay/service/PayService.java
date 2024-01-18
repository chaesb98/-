package com.springboot.dtod.pay.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springboot.dtod.pay.domain.PayVO;
import com.springboot.dtod.pay.repository.PayRepository;

@Service
public class PayService {

	private final PayRepository payRepository;
	
	@Autowired
	public PayService(PayRepository payRepository) {
		this.payRepository = payRepository;
	}
	
	public Page<PayVO> getAllPays(Pageable pageable){
		return payRepository.findAll(pageable);
	}
}
