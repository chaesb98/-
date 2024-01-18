package com.springboot.dtod.login.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Data;

@SequenceGenerator(
		name = "MEMBER_IDX_SEQ_GEN",
		sequenceName = "MEMBER_IDX_SEQ",
		initialValue = 1,
		allocationSize = 1		
		)
@Data
@Entity
@Table(name="member")
public class MemberVO {
	
	@Id	
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MEMBER_IDX_SEQ_GEN")
	@SequenceGenerator(name = "MEMBER_IDX_SEQ", sequenceName = "MEMBER_IDX_SEQ_GEN", allocationSize = 1)
	@Column(name = "id", nullable = false, length = 20)
	private String userId;
	
	@Column(name = "password", nullable = false, length = 20)
	private String userPassword;
	
	@Column(name = "name", nullable = false, length = 20)
	private String userName;
	
	@Column(name = "email", nullable = false, length = 50)
	private String userEmail;
	
	@Column(name = "address", length = 1000)
	private String userAddress;
	
	@Column(name = "call", length = 13)
	private String userCall;
	
	@Column(name = "gender", length = 1)
	private String userGender;
	
	@Column(name = "birth", length = 11)
	private String userBirth;

}
