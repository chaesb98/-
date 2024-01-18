import React from "react";
import Container from 'react-bootstrap/Container';

const Footer = () => {
    return(
        <div>
            <Container className="f_div">
            <div className="footer_left">
                <ul>
                    <li className="f_logo">
                        <img src="/images/logo_text1.svg" />
                    </li>
                    <li className="f_cs">
                        <a href="/">
                            <button type="button">고객센터</button>
                        </a>
                        <section className="f_time">
                            <span>고객센터 1661-8686</span>
                            <span>AM10:00 - PM 18:00 점심시간 13:00 - 14:00</span>
                        </section>
                    </li>
                    <li className="f_con">
                        <p>
                        주식회사 술결 | 공동대표 김지은 채승병 김용학 정주이 김수진 <br />
                        본 사이트는 포트폴리오로 상업적 웹사이트와 무관합니다. <br /> 
                        통신판매 신고번호 2023-서울구로-3 <br />
                        <br />
                        ⓒSulGyul,Inc. All rights reserved 
                        </p>
                    </li>
                </ul>
            </div>
            <div className="footer_right">
                <div className="get-free-quote">
                <form id="free-quote" method="submit" role="search" action="#">
            <div className="row">
              <div className="col-lg-12">
                <div className="section-heading-footer">
                  <h2 className="pink">Contact Us</h2>
                </div>
              </div>
              <div className="col-lg-12">
                <fieldset>
                  <input className="search_btn" type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Enter your E-mail Address"
                    required="" />
                </fieldset>
                <fieldset>
                    <button>SUBSCIBE NOW</button>
                </fieldset>
              </div>
            </div>
          </form>
                </div>
            </div>
            </Container>
        </div>
    );
};

export default Footer;