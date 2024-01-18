package com.springboot.andriodapp.service;

import com.springboot.andriodapp.model.Member;


public interface MemberService {
	
	void insert(Member vo);
	
	Member select(Member vo);
}
