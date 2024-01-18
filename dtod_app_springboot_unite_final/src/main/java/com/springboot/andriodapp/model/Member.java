package com.springboot.andriodapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "member")
@Getter
@Setter
@ToString
public class Member {
	
	@Id	
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
