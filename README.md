## 🍷술마실 결심 (Decision to Drink)
술에 어울리는 영화를 추천하는 웹/앱 서비스


## 📜프로젝트 정보
1. 수행 기간
* 2023.11.01 ~ 2023.11.27

2. 참여 인원

|이름|APP|WEB|
|------|---|---|
|김지은(팀장)|찾아오시는 길, 툴바|자주 묻는 질문, 커뮤니티 게시판 CRUD, 문의하기 글 등록|
|채승병(부팀장)|회원가입, 로그인&로그아웃|회사소개, 상품소개, 헤더&푸터, 후기 게시판 CRUD, 회원 구독 관리 목록 조회 및 페이징처리, 관리자 전용 로그인|
|김용학(팀원)|로그인&로그아웃|상품 소개, 1:1 문의하기 게시판, 관리자 메인 페이지|
|정주이(팀원)|앱 시작 화면, 상품소개|메인 페이지, 사용자 로그인&로그아웃, 사용자 회원가입&정보수정&탈퇴, ID 및 PW 찾기, 관리자 로그인&로그아웃|
|김수진(팀원)|메인페이지|찾아오시는 길, 사용자&관리자 공지사항 CRUD, 결제하기 기능|


## 💻기술 스택
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"> 
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"> 
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> 
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white"> <img src="https://img.shields.io/badge/react-61DAFB?style=for-the-badge&logo=react&logoColor=black"> 
  <img src="https://img.shields.io/badge/vue.js-4FC08D?style=for-the-badge&logo=vue.js&logoColor=white"> <br>
  <img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white"> <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
  <img src="https://img.shields.io/badge/android-34A853?style=for-the-badge&logo=android&logoColor=white">

## 💡주요 기능
### 앱
#### 로그인
- DB값 검증
- 회원가입 기능

#### 메인페이지
- Videoview를 이용한 동영상 삽입
- gridview를 이용한 이미지 표현

#### 찾아오시는 길 
- GoogleMap API를 이용한 지도 삽입
<br><br>
### 사용자 웹
#### 회원가입
- 행정안전부 도로명 주소 API 적용한 주소 입력
- 비밀번호 확인 후 일치해야만 회원가입 가능
- 회원 정보 수정 및 탈퇴 가능

#### 로그인
- DB 값 검증
- 로그인 시 쿠키(Cookie) 및 세션(Session) 생성
- ID & PW 찾기 가능

#### 메인 페이지
- 채널톡 API를 이용한 챗봇 활용
- AOS를 활용하여 스크롤시 효과 적용

#### 찾아오시는 길
- Daum Kakao API를 이용하여 지도 삽입

#### 게시판
- 게시물 리스트 및 페이징 처리
- 검색 처리 기능
- 게시물 등록, 수정 삭제 가능
- 댓글 리스트 및 페이징 처리
- 댓글 등록, 수정, 삭제 기능

#### 결제하기
- KG 이니시스를 활용하여 결제하기 기능 구현
- 결제하기 후 DB 데이터 삽입

<br><br>
### 관리자 웹

#### 로그인
- 관리자 계정만 로그인 가능

#### 공지사항
- 글 리스트 보기
- 글 등록, 수정, 삭제 기능

#### 구독(결제) 관리
- 구독 정보 리스트 및 페이징

#### 문의하기
- 글 등록 기능
