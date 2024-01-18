package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.MemberVO;

public interface MemberMapper {

	public MemberVO findId(@Param("name") String name, @Param("email") String email);
	
	public MemberVO findPassword(@Param("id") String id, @Param("email") String email);
	
	public void register(MemberVO member);
	
	public MemberVO read(String id);
	
	public MemberVO login_read(@Param("id") String id, @Param("password") String password);
	
	public int modify(MemberVO member);
	
	public boolean remove(String id);
	
	public MemberVO login(@Param("id") String id, @Param("password") String password);

			

	
}
