package com.springboot.dtod.pay.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name="pay")
public class PayVO {
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pay_seq_generator")
    @SequenceGenerator(name = "pay_seq_generator", sequenceName = "pay_seq", allocationSize = 1)
    @Column(name = "pay_id", length = 50, nullable = false)
    private String payId;

	
	@Column(name = "import_id", length = 50)
    private String importId;

    @Column(name = "pname", length = 100)
    private String pname;

    @Column(name = "pay_amount")
    private int payAmount;

    @Column(name = "pbuyer", length = 50)
    private String pbuyer;
    
    @Column(name = "pemail", length = 50)
    private String pemail;

    @Column(name = "paddress", length = 150)
    private String paddress;

    @Temporal(TemporalType.DATE)
    @Column(name = "per_time")
    private Date perTime;
}
