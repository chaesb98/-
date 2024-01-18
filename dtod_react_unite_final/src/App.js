import { Route } from 'react-router-dom/cjs/react-router-dom.min';
import './App.css';
import Container from 'react-bootstrap/Container';
import ANSaveForm from './pages/notice/ANSaveForm';
import ANList from './pages/notice/ANList';
import ANUpdateForm from './pages/notice/ANUpdateForm';
import ANDetail from './pages/notice/ANDetail';
import Login from './pages/user/Login';
import Subscribe from './pages/subscribe/Subscribe';
import QnA from './pages/qna/qna';
import Main from './pages/Main';
import Contactus from './pages/contactus/ContactUs';

function App() {
  return (
    <div>
      {/* <Header /> */}
      <div>
        <Route path="/" exact={true} component={Main} /> {/* 메인 */}
        <Route path="/admin/login" exact={true} component={Login} /> {/* 로그인 */}
        <Route path="/admin/notice" exact={true} component={ANList} /> {/* 목록보기 */}
        <Route path="/admin/anSaveForm" exact={true} component={ANSaveForm} /> {/* 글쓰기(등록하기) */}
        <Route path="/admin/adminNotice/:nobno" exact={true} component={ANDetail} /> {/* 한 건만 보는 상세 페이지 */}
        <Route path="/admin/updateForm/:nobno" exact={true} component={ANUpdateForm} /> {/* 책 수정 */}
        <Route path="/admin/subscribe" exact={true} component={Subscribe} /> {/* 구독 정보 페이지 */}
        <Route path="/admin/qna" exact={true} component={QnA} /> {/* 자주 묻는 질문 페이지 */}
        <Route path="/admin/contactUs" exact={true} component={Contactus} /> {/* 문의하기 페이지 */}
      </div>
      {/* <Footer /> */}
    </div>
  );
}

export default App;