package com.springboot.dtod.contactus.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.dtod.contactus.domain.Consultation;
//@Repository를 적어야 스프링 IoC에 빈으로 등록이 되는데
//JpaRepository를 extends하면 생략 가능함
//JpaRepository는 CRUD 함수를 들고 있음
public interface ConRepository extends JpaRepository<Consultation, Long> {

}
