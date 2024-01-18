package com.springboot.dtod.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.dtod.login.model.MemberVO;
import com.springboot.dtod.login.repository.MemberDAO;
import com.springboot.dtod.login.service.MemberService;


@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	/**
	 * 아이디, 패스워드로 회원 조회 처리함
	 * @param memberVO
	 * @throws Exception
	 */
	
	public MemberVO selectMemberByIdByPw(MemberVO memberVO) throws Exception {
		MemberVO resultVO = memberDAO.findByUserIdAndUserPassword(memberVO.getUserId(), memberVO.getUserPassword());
		return resultVO;
	
	
	}
}
