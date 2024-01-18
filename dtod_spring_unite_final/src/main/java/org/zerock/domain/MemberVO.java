package org.zerock.domain;

import lombok.Data;

@Data
public class MemberVO {

    private String id; // 사용자 id
    private String password; // 비밀번호
    private String email; // 이메일
    private String name; // 사용자 이름
    private String call; // 핸드폰 번호
    private String address; // 합쳐진 주소
    private Character gender; // 성별
    private String roadAddrPart1; //주소
    private String postNum; //우편번호
    private String addrDetail; //상세주소
    private String zipNo; // 지번
    private int birth; // 생일

    
    public void address() {
        this.address = this.roadAddrPart1 + " " + this.addrDetail;
    }
    

}