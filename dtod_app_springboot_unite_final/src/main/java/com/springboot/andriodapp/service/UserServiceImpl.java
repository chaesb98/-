package com.springboot.andriodapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.andriodapp.model.Member;
import com.springboot.andriodapp.repository.MemberRepository;

@Service
public class UserServiceImpl implements MemberService{

	@Autowired
	MemberRepository repo;
	
	@Override
	public void insert(Member vo) {
		repo.save(vo);
	}

	@Override
	public Member select(Member vo) {
		Member user = repo.findByUserId(vo.getUserId());
		return user;
	}

}
