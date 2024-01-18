package com.springboot.dtod.pay.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.dtod.pay.domain.PayVO;

@Repository
public interface PayRepository extends JpaRepository<PayVO, Long>{
	
	Page<PayVO> findAll(Pageable pageable);
}
