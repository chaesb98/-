package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ConsultationVO {

	private Long conbno;
	private String contitle;
	private String concontent;
	private String conwriter;
	private Date condate;
	private Date conupdate;
	
}
