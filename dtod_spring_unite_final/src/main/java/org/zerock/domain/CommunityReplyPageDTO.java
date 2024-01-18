package org.zerock.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class CommunityReplyPageDTO {

	private int cmreplyCnt;
	private List<CommunityReplyVO> list;
}
