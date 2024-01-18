package com.springboot.andriodapp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springboot.andriodapp.model.Member;

@Repository
public interface MemberRepository extends CrudRepository<Member, String>{
	
	// 회원 가입 등록을 위한 save() 메소드 선언
	Member save(Member user); 
	
	// User id 값을 찾는 용도의 쿼리 메소드 findByUserId() 선언
	Member findByUserId(String id); 
}
