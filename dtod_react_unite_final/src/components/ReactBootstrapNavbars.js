import Container from 'react-bootstrap/Container';
import Form from 'react-bootstrap/Form';
import React, { useState, useEffect } from "react";
import "../css/user_css/common.css";
import Header from './Header';
import Footer from './Footer';

function ReactBootstrapNavbars() {

  // 로그인, 로그아웃
  const [isLogin, setIsLogin] = useState(false);
  const name = sessionStorage.name

  // 로그인 상태 관리
  useEffect(()=>{
    if(sessionStorage.getItem('member_id') === null){
      console.log('isLogin 상태 = ', isLogin)
    } else {
      // 로그인 상태 변경
      setIsLogin(true)
      console.log('isLogin 상태 = ', isLogin)
    }
  });

  const onLogout = () => {
    alert("로그아웃 되셨습니다!");
    // sessionStorage에 저장되어 있는 아이템을 삭제 처리 합니다.
    sessionStorage.removeItem('member_id')
    sessionStorage.removeItem('name')

    // '/' url로 이동 처리함(새로고침)
    document.location.href = '/'
  }

  return (
      <Container>
        <Header />
          {/* https://react-bootstrap.netlify.app/docs/forms/form-control */}
          {/* d-flex는 flex 적용 의미함 */}
          <Form className='d-flex'>
           {/* .me-2는 margin-end 0.5rem Size 적용 의미함 */}
           {/* aria-label은 값에 간결한 설명을 제공해서, 문자열을 통해 현재 엘리먼트의 기능/목적을 설명함 */}
          {/* <Form.Control type="search" className='me-2' placeholder="커뮤니티 검색" aria-label='Search' /> */}
          {/* https://react-bootstrap.netlify.app/docs/components/buttons */}
          {/* <Button variant="outline-success" className='searchBtn'>검색</Button> */}
          {/* https://getbootstrap.com/docs/4.0/components/navbar/ */}
          <div className="collapse navbar-collapse" id="navbarSupportedContent">
          <ul className="navbar-nav mr-auto">
            <li className="nav-item active">
              <div>
                {isLogin
                ? <div className='myLogout'>
                  {/* JSX는 javaScript이기 때문에 for 단어는 반복의 의미로 인식할 수 있습니다. 그래서, for 대신에 htmlFor을 사용해 주어야 합니다. */}
                  {/* 즉, 아래의 label 태그에서 for 속성 대신에 htmlFor 속성을 사용해 주어야 합니다. */}
                  <label htmlFor='logoutText'>{name}님 환영합니다!</label>
                  <a id='logoutText' className='nav-link' onClick={onLogout}>로그아웃</a>
                  </div>
                :
                  <a className='nav-link login_link' role='button' href='/'  >로그인</a>
                }
              </div>
            </li>
          </ul>
          </div>
          </Form>
          <Footer />
      </Container>
  );
}

export default ReactBootstrapNavbars;