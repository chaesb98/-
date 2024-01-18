package com.springboot.dtod.login.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.dtod.login.model.MemberVO;



@Repository
public interface MemberDAO extends JpaRepository<MemberVO, String>{

	// 회원가입여부를 확인하기 위한 MemberId, MemberPw로 단건 조회를 처리합니다.
		MemberVO findByUserIdAndUserPassword(String userId, String userPassword);
 
		
}
