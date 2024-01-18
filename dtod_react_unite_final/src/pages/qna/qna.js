import React, { useState } from "react";
import { Container, Accordion, Nav } from 'react-bootstrap';
import '../../css/qna_css/qna.css';

const tabContents = {
  whole: [
    { id: 'event1', title: '# 이벤트 당첨 안내 사항', content: (
      <>
      당첨기준<br />
      -> 이벤트 당첨 기준은 회원가입 후 참여한 회원에 한하여 공정하게 랜덤 추첨됩니다.<br />
      단, 기대평/리뷰 등 이벤트의 특성에 따라 내용을 꼼꼼히 작성하신 분들은 당첨 확률이 높아질 수 있습니다.
      <br /><br /><br />
      당첨 수령 <br />
      -> 경품이 있는 이벤트일 시 당첨 후 일괄배송되며,<br />
      이벤트 응모 시 등록된 개인정보 기준으로 발송됩니다. <br />
      당첨 발표 후 최소 3주 이상 소요될 수 있으며, 배송업체의 파업이나 사정에 따라 배송기간에는 다소 차이가 있을 수 있습니다. 
      <br /><br /><br />
      당첨 확인<br />
      -> 이벤트 당첨자 발표는 이벤트 게시판에서 확인하실 수 있습니다
      <br /><br /><br />
      정보 변경<br />
      -> 이벤트 당첨 후 정보변경은 불가능하기 때문에 응모 전 반드시 개인정보를 최신 정보로 수정해주셔야 합니다. <br />
      -> 회원정보가 잘못된 경우, 연락처 및 주소 변경으로 인한 경품 반송 및 미수령 시 당첨이 취소될 수 있습니다. 
      <br /><br /><br />
      당첨 안내<br />
      ->이벤트 당첨자 발표 게시판을 통해 본인이 직접 확인하셔야 하며, 따로 연락드리지 않습니다.<br />
      단, 이벤트에 따라 제세공과금 등의 본인 확인을 위하여 별도 안내 문자 혹은 전화로 연락을 드릴 수 있습니다. 
      <br /><br /><br />
      로그인 참여<br />
      ->회원 대상으로 진행되는 이벤트 이므로 로그인 한 회원에 한해 참여가 가능합니다.
      <br /><br /><br />
      경품 미수령<br />
      -> 이벤트 상품 발송은 회원님의 이벤트 응모시 등록 된 개인정보 기준으로 발송되고 있습니다.<br />
      개인정보에서 연락처를 수정하기 않았거나 정확한 주소를 등록하지 않았는지 확인 바라며, <br />정확히 정보가 기재되어 있음에도 배송이 이루어지지 않은 경우 고객문의로 문의 부탁드립니다. <br />
      참여한 이벤트 명, 당첨된 아이디 등을 남겨주시면 좀 더 빠른 안내를 받으실 수 있습니다. 
      </>) },
    { id: 'payment3', title: '# 자동결제는 언제마다 이루어지나요?', content: (
      <>
      >>자동결제는 매월 동일한 날짜에 진행됩니다.<br /> 
      11월 1일에 결제하신 회원님의 경우 다음 결제 예정일은 12월 1일 이며,<br /> 
      31일에 구매하신 회원님의 경우 다음달 30일에 자동결제가 진행되며 자동결제 기준일이 30일로 변경됩니다.<br /> 
      2월 이후는 일괄 28일로 변경됩니다.
    </>) },
    { id: 'login1', title: '# 성인인증은 어떻게 하나요?', content: (
      <>
        >> 회원가입 시 성인인증 확인란에서 진행하시면 됩니다. <br /><br />
        성인인증은 인증 후 1년간 유효하며 해마다 갱신하셔야만 그 권한이 유지되며,
        <br />
        &nbsp;&nbsp;인증 유효기간은 마이페이지 -> 성인인증 메뉴에서 확인하실 수 있습니다.
      </>
    ) },
    { id: 'login4', title: '# 로그인이 안될 때 고객문의를 남길 수있는 방법이 있나요?', content: (
      <>
      >> 로그인이 되지 않으시는 경우 아래 술결 대표메일로 이메일 문의를 남겨주시면 확인 후 답변 드립겠습니다.<br />
      술결 대표메일 [dtod@dtod.com]
      <br /><br />
      문의 내용에 발생 증상 및 상세 정보를 남겨주시면 더욱 빠른 조치가 가능하오니 이용에 참고 부탁드립니다. 
      </>
    ) },
    { id: 'payment1', title: '# 정기결제수단 변경은 어떻게 하나요?', content: (
      <>
      >>PC에서 술결 WEB 로그인<br />
      ->마이페이지 클릭 <br />
      ->[이용권/정기결제] 메뉴 클릭<br />
      ->결제 수단 항목의 [결제수단변경] 버튼 클릭<br />
      ->변경할 결제 정보 입력 후 재로그인
      <br /><br />
      *술결 APP에서는 결제수단 변경이 어렵습니다. <br />
      *결제일 하루 이전까지 결제 정보를 변경하셔야 합니다.
      <br /><br />
      추가로 궁금한 내용은 [dtod@dtod.com]으로 접수해 주시면 빠르게 도움 드리겠습니다
    </>) },
    { id: 'postservice3', title: '# 술결 이용중 시스템 오류/장애가 발생해요', content: (
      <>
      >>서비스 이용에 불편을 드려 죄송합니다.<br />
      발생하는 오류 현상 및 이미지를 확인하시어 아래 정보와 함께 1:1 게시판 문의를 부탁드립니다. 
      <br /><br />
      [PC]<br />
      ① 브라우저 및 버전명<br />
      ② 결제수단<br />
      ③ 오류 발생 페이지(팝업) 내용 및 오류 현상
      <br /><br />
      [모바일]<br />
      ① 휴대폰(디바이스) 모델명 <br />
      ② 운영체제(안드로이드, 1OS등) 버전명<br />
      ③ 브라우저 및 버전명 <br />
      ④ 올리브영 앱버전명 <br />
      ⑤ 결제수단<br />
      ⑥ 오류 발생 페이지(팝업) 내용 및 오류 현상
      </>) },
    { id: 'payment2', title: '# 정기구독을 해지하였는데 카드 매출이 아직 처리가 안되었습니다', content: (
      <>
      >>정기구독 해지 후 카드매출을 취소한 경우 카드사 사이트에는 취소매출확인이 최대 7일 정도의 시일이 소요됩니다.<br /> 
      며칠 후에 다시 한번 확인하시거나 카드사에 전화 문의하신 후 여전히 매출취소가 안된 경우에는<br /> 
      [dtod@dtod.com]로 문의해 주시기 바랍니다.
    </>) },
    { id: 'postservice1', title: '# 게시물 운영 정책', content: (
      <>
      -> 게시물의 저작권과 책임<br />
      -회원이 술결 서비스(이하 '서비스')에 게시한 저작권은 게시자 본인에게 있으며, 서비스에 게시된 정보나 의견은 술결(이하 '회사')의 입장과는 무관합니다.<br />
      -서비스에 게시한 게시물로 파생되는 문제에 대해서는 전적으로 해당 게시물을 게시한 본인에게 책임이 있습니다.<br />
      -회사는 회원이 서비스 내에 게시한 게시물이 타인의 저작권, 프로그램 저작권 등을 침해하더라도 이에 대한 민,형사상의 책임을 부담하지 않으며, 만일 이를 이유로 회사가 타인으로부터 손해배상청구 등 이의 제기를 받은 경우 해당 회원은 그로 인해 발생한 모든 손해를 부담하여야 합니다. <br />
      <br /><br />
      ->게시물 삭제 기준<br />
      -국가이념을 훼손하거나 국가의 정상적인 활동을 저해할 우려가 있는 경우<br />
      -사회질서를 부정하고 조롱하거나 미풍양속에 위반되는 내용의 정보를 유포하는 경우<br />
      -불쾌감을 유발할 수 있는 과도한 욕설과 저속한 비어, 은어, 속어를 사용한 경우<br />
      -수치심이나 혐오감 또는 폭행을 구체적으로 묘사하여 공포심을 일으키는 경우<br />
      -특정 종교 교리를 비방, 왜곡하거나 조롱하는 경우<br />
      -저주성 또는 미신 숭배 내용일 경우<br />
      -허위사실을 고의로 유포하여 이용자들간의 감정 대립을 조장하는경우<br />
      -외설적인 내용으로 성적 수치심과 혐오감을 유발하는 경우<br />
      -저속하거나 음란한 데이터, 소프트웨어, 음악, 사진, 그래픽, 비디오 등의 광고 내용을 담거나 음란사이트를 연결한 게시물 <br />
      -당사자의 허락 없이 개인정보(이름, 주민번호, 지역, 사진) 등을 등록한 경우<br />
      -특정인 또는 단체를 비방하거나 사생활을 부당하게 침해하는 경우<br />
      -저작권이 걸려 있는 소프트 웨어 등을 동의 없이 무료로 다운로드 할 수 있게 하거나, 시리얼 넘버를 공유하는 행위<br />
      -특정 회사나 개인의 이익을 목적으로 상업적 내용을 게재한 경우<br />
      -돈 버는 사이트 소개, 피라미드 식 불법 다단계 사기행위 등 허위사실이나 불법적인 내용을 게재할 경우<br />
      -회사 직원이나 게시판 담당자 등을 사칭하거나 타인의 명의를 도용한 경우<br />
      -서비스와 관련되어 소프트웨어바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 해킹하거나 정보의 파괴 및 혼란을 유발시키는 경우
      </>) },
    { id: 'login3', title: '# 자동 로그아웃이 되었는데, 제 계정을 모르겠어요', content: (
      <>
      >> APP과 PC WEB계종 선택 화면에서 최근에 마지막으로 로그인하신 계정을 확인하실 수 있습니다.<br />
      최근 로그인하신 계정을 선택하여 주시고, 혹시라도 일치하는 회원정보가 없다는 알림 메시지가 나온다면 아래 사항을 확인하여 주세요.
      <br /><br />
      계정확인방법<br />
      1) 계정 선택 화면 가장 하단 '아이디찾기' 클릭<br />
      2) 본인인증으로 찾기 > 본인인증하기<br />
      3) 가입한 계정 ID들 안내<br />
      4) 계정 ID 옆 표기된 계정으로 로그인
      <br /><br />
      ※ 이메일로 찾기 시 확인되지 않으니, 반드시 본인인증으로 찾기로 이용 계정 확인해주세요<br />
      ※ 본인인증이 완료된 계정만 확인이 가능합니다.
      <br /><br />
      지속해서 로그인이 되지 않으시는 경우 1:1 게시판 문의 또는 dtod@dtod.com 으로 문의해 주시면, 신속하게 가입하신 계정 확인하여 답변드리겠습니다. 
      </>
    ) },
    { id: 'payment4', title: '# 자동결제 해지가 안되요.', content: (
      <>
      >>자동결제의 경우, 자동결제 특성상 결제 예정일 당일에는 자동결제 해지가 불가능합니다.<br />
      예를 들어 11월 1일에 결제하신 회원님의 경우 다음 결제 예정일은 12월 1일로, 12월 1일에는 해지가 불가능합니다.<br />
      Wavve 이용권은 선불 개념이므로, 다음 결제 예정일 이전에 해지하셔도 이용권 만료일 전까지는 계속 이용이 가능하시며,<br />
      다음 달 자동결제만 중지 됩니다.
    </>) },
    { id: 'postservice2', title: '# 관련 기관의 도움을 받고 싶어요', content: (
      <>
      >>계정 도용 의심 확인, 개인 정보 보호 관련 상담 등이 필요하신 경우 아래의 기관에서 도움을 요청하실 수 있습니다.
      <br /><br />
      ->개인정보분쟁조정위원회<br />
      개인정보 침해와 고나련한 상담과 분쟁 조정<br />
      (국번없이) 1833-6972 / HTTP://WWW.KIPICO.GO.KR
      <br /><br />
      ->경찰청 사이버수사국<br />
      해킹, 바이러스, 개인 정보 도용, 게임사기, 인터넷 사기 등 각종 사이버 범죄 신고<br />
      (국번없이) 182 / http://ecrm.cyber.go.kr
      <br /><br />
      ->방송통신심의위원회<br />
      정보 통신상에서의 건전한 문화 창달 및 정보 통신에 올바른 이용 환경 조성<br />
      02-3219-5114 / http://www.kocsc.or.kr
      <br /><br />
      ->방송통신심의위원회 인터넷피해구제<br />
      정보통신망에서 발생하는 명예훼손과 성폭력 등 사이버 권리침해에 대한 다양한 상담과 분쟁 조정<br />
      02-3219-5114 / http://remedy.kocsc.or.kr
      <br /><br />
      ->한국인터넷진흥원<br />
      개인 정보 보호와 관련한 상담 및 개인 정보 침해신고<br />
      (국번없이) 118 / http://www.kisa.or.kr
      </>) },
    { id: 'login5', title: '# 주민등록번호가 도용된 것 같아요', content: (
      <>
      >>고객님의 명의가 도용된 경우 사이버수사대(대표번호 182)로 신고하실 수 있습니다.<br />
      본인의 계정을 삭제하고 싶으시면 고객센터(1599-3709)로 연락해주시기 바랍니다.<br />
      본인여부 확인 후 삭제해드립니다. 본인여부 확인을 위해서 고객님 신분증(주민등록증 운전면허증 여권 등) 사본 및 기타 서류 등을 요청드릴 수 있습니다. 
      </>
    ) },
    { id: 'login2', title: '# 회원탈퇴 방법이 궁금해요', content: (
      <>
        >> 술결 WEB 로그인 
        ->마이페이지 메뉴 클릭
        ->회원정보 수정 메뉴 클릭
        ->회원탈퇴 메뉴 클릭하여 탈퇴 진행
        <br /> <br />
        &nbsp;&nbsp;유료 서비스를 이용중이신 경우 회원 탈퇴 시 정기결제 해지와
        상품 포기 동의가 진행됩니다. <br />
        정기결제 해지 및 상품 포기 동의 시 보유하신 이용권 및 쿠폰의 이용이 
        즉시 중단됩니다.<br />
        회원탈퇴는 개인정보와 관련된 내용으로 반드시 본인이 내용을 
        숙지하고 동의하셔야 하기 때문에 <br />
        1:1 게시판 문의나 [dtod@dtod.com]로 요청하실 경우
        지원이 불가한 점 양해 부탁드립니다. 
        </>
      ) }
  ],
  login: [
    { id: 'login1', title: '# 성인인증은 어떻게 하나요?', content: (
      <>
        >> 회원가입 시 성인인증 확인란에서 진행하시면 됩니다. <br /><br />
        성인인증은 인증 후 1년간 유효하며 해마다 갱신하셔야만 그 권한이 유지되며,
        <br />
        &nbsp;&nbsp;인증 유효기간은 마이페이지 -> 성인인증 메뉴에서 확인하실 수 있습니다.
      </>
    ) },
    { id: 'login2', title: '# 회원탈퇴 방법이 궁금해요', content: (
    <>
      >> 술결 WEB 로그인 
      ->마이페이지 메뉴 클릭
      ->회원정보 수정 메뉴 클릭
      ->회원탈퇴 메뉴 클릭하여 탈퇴 진행
      <br /> <br />
      &nbsp;&nbsp;유료 서비스를 이용중이신 경우 회원 탈퇴 시 정기결제 해지와
      상품 포기 동의가 진행됩니다. <br />
      정기결제 해지 및 상품 포기 동의 시 보유하신 이용권 및 쿠폰의 이용이 
      즉시 중단됩니다.<br />
      회원탈퇴는 개인정보와 관련된 내용으로 반드시 본인이 내용을 
      숙지하고 동의하셔야 하기 때문에 <br />
      1:1 게시판 문의나 [dtod@dtod.com]로 요청하실 경우
      지원이 불가한 점 양해 부탁드립니다. 
      </>
    ) },
    { id: 'login3', title: '# 자동 로그아웃이 되었는데, 제 계정을 모르겠어요', content: (
      <>
      >> APP과 PC WEB계종 선택 화면에서 최근에 마지막으로 로그인하신 계정을 확인하실 수 있습니다.<br />
      최근 로그인하신 계정을 선택하여 주시고, 혹시라도 일치하는 회원정보가 없다는 알림 메시지가 나온다면 아래 사항을 확인하여 주세요.
      <br /><br />
      계정확인방법<br />
      1) 계정 선택 화면 가장 하단 '아이디찾기' 클릭<br />
      2) 본인인증으로 찾기 > 본인인증하기<br />
      3) 가입한 계정 ID들 안내<br />
      4) 계정 ID 옆 표기된 계정으로 로그인
      <br /><br />
      ※ 이메일로 찾기 시 확인되지 않으니, 반드시 본인인증으로 찾기로 이용 계정 확인해주세요<br />
      ※ 본인인증이 완료된 계정만 확인이 가능합니다.
      <br /><br />
      지속해서 로그인이 되지 않으시는 경우 1:1 게시판 문의 또는[dtod@dtod.com] 으로 문의해 주시면, 신속하게 가입하신 계정 확인하여 답변드리겠습니다. 
      </>
    ) },
    { id: 'login4', title: '# 로그인이 안될 때 고객문의를 남길 수있는 방법이 있나요?', content: (
      <>
      >> 로그인이 되지 않으시는 경우 아래 술결 대표메일로 이메일 문의를 남겨주시면 확인 후 답변 드립겠습니다.<br />
      술결 대표메일 [dtod@dtod.com]
      <br /><br />
      문의 내용에 발생 증상 및 상세 정보를 남겨주시면 더욱 빠른 조치가 가능하오니 이용에 참고 부탁드립니다. 
      </>
    ) },
    { id: 'login5', title: '# 주민등록번호가 도용된 것 같아요', content: (
      <>
      >>고객님의 명의가 도용된 경우 사이버수사대(대표번호 182)로 신고하실 수 있습니다.<br />
      본인의 계정을 삭제하고 싶으시면 고객센터(1599-3709)로 연락해주시기 바랍니다.<br />
      본인여부 확인 후 삭제해드립니다. 본인여부 확인을 위해서 고객님 신분증(주민등록증 운전면허증 여권 등) 사본 및 기타 서류 등을 요청드릴 수 있습니다. 
      </>
    ) }     
  ],
  payment: [
    { id: 'payment1', title: '# 정기결제수단 변경은 어떻게 하나요?', content: (
      <>
      >>PC에서 술결 WEB 로그인<br />
      ->마이페이지 클릭 <br />
      ->[이용권/정기결제] 메뉴 클릭<br />
      ->결제 수단 항목의 [결제수단변경] 버튼 클릭<br />
      ->변경할 결제 정보 입력 후 재로그인
      <br /><br />
      *술결 APP에서는 결제수단 변경이 어렵습니다. <br />
      *결제일 하루 이전까지 결제 정보를 변경하셔야 합니다.
      <br /><br />
      추가로 궁금한 내용은 [dtod@dtod.com]으로 접수해 주시면 빠르게 도움 드리겠습니다
    </>) },
    { id: 'payment2', title: '# 정기구독을 해지하였는데 카드 매출이 아직 처리가 안되었습니다', content: (
      <>
      >>정기구독 해지 후 카드매출을 취소한 경우 카드사 사이트에는 취소매출확인이 최대 7일 정도의 시일이 소요됩니다.<br /> 
      며칠 후에 다시 한번 확인하시거나 카드사에 전화 문의하신 후 여전히 매출취소가 안된 경우에는<br /> 
      [dtod@dtod.com]로 문의해 주시기 바랍니다.
    </>) },
    { id: 'payment3', title: '# 자동결제는 언제마다 이루어지나요?', content: (
      <>
      >>자동결제는 매월 동일한 날짜에 진행됩니다.<br /> 
      11월 1일에 결제하신 회원님의 경우 다음 결제 예정일은 12월 1일 이며,<br /> 
      31일에 구매하신 회원님의 경우 다음달 30일에 자동결제가 진행되며 자동결제 기준일이 30일로 변경됩니다.<br /> 
      2월 이후는 일괄 28일로 변경됩니다.
    </>) },
    { id: 'payment4', title: '# 동결제 해지가 안되요.', content: (
      <>
      >>자동결제의 경우, 자동결제 특성상 결제 예정일 당일에는 자동결제 해지가 불가능합니다.<br />
      예를 들어 11월 1일에 결제하신 회원님의 경우 다음 결제 예정일은 12월 1일로, 12월 1일에는 해지가 불가능합니다.<br />
      술결 이용권은 선불 개념이므로, 다음 결제 예정일 이전에 해지하셔도 이용권 만료일 전까지는 계속 이용이 가능하시며,<br />
      다음 달 자동결제만 중지 됩니다.


    </>) },
  ],
  event: [
    { id: 'event1', title: '# 이벤트 당첨 안내 사항', content: (
    <>
    당첨기준<br />
    -> 이벤트 당첨 기준은 회원가입 후 참여한 회원에 한하여 공정하게 랜덤 추첨됩니다.<br />
    단, 기대평/리뷰 등 이벤트의 특성에 따라 내용을 꼼꼼히 작성하신 분들은 당첨 확률이 높아질 수 있습니다.
    <br /><br /><br />
    당첨 수령 <br />
    -> 경품이 있는 이벤트일 시 당첨 후 일괄배송되며,<br />
    이벤트 응모 시 등록된 개인정보 기준으로 발송됩니다. <br />
    당첨 발표 후 최소 3주 이상 소요될 수 있으며, 배송업체의 파업이나 사정에 따라 배송기간에는 다소 차이가 있을 수 있습니다. 
    <br /><br /><br />
    당첨 확인<br />
    -> 이벤트 당첨자 발표는 이벤트 게시판에서 확인하실 수 있습니다
    <br /><br /><br />
    정보 변경<br />
    -> 이벤트 당첨 후 정보변경은 불가능하기 때문에 응모 전 반드시 개인정보를 최신 정보로 수정해주셔야 합니다. <br />
    -> 회원정보가 잘못된 경우, 연락처 및 주소 변경으로 인한 경품 반송 및 미수령 시 당첨이 취소될 수 있습니다. 
    <br /><br /><br />
    당첨 안내<br />
    ->이벤트 당첨자 발표 게시판을 통해 본인이 직접 확인하셔야 하며, 따로 연락드리지 않습니다.<br />
    단, 이벤트에 따라 제세공과금 등의 본인 확인을 위하여 별도 안내 문자 혹은 전화로 연락을 드릴 수 있습니다. 
    <br /><br /><br />
    로그인 참여<br />
    ->회원 대상으로 진행되는 이벤트 이므로 로그인 한 회원에 한해 참여가 가능합니다.
    <br /><br /><br />
    경품 미수령<br />
    -> 이벤트 상품 발송은 회원님의 이벤트 응모시 등록 된 개인정보 기준으로 발송되고 있습니다.<br />
    개인정보에서 연락처를 수정하기 않았거나 정확한 주소를 등록하지 않았는지 확인 바라며, <br />정확히 정보가 기재되어 있음에도 배송이 이루어지지 않은 경우 고객문의로 문의 부탁드립니다. <br />
    참여한 이벤트 명, 당첨된 아이디 등을 남겨주시면 좀 더 빠른 안내를 받으실 수 있습니다. 
    </>) },
  ],
  postservice: [
    { id: 'postservice1', title: '# 게시물 운영 정책', content: (
    <>
    -> 게시물의 저작권과 책임<br />
    -회원이 술결 서비스(이하 '서비스')에 게시한 저작권은 게시자 본인에게 있으며, 서비스에 게시된 정보나 의견은 술결(이하 '회사')의 입장과는 무관합니다.<br />
    -서비스에 게시한 게시물로 파생되는 문제에 대해서는 전적으로 해당 게시물을 게시한 본인에게 책임이 있습니다.<br />
    -회사는 회원이 서비스 내에 게시한 게시물이 타인의 저작권, 프로그램 저작권 등을 침해하더라도 이에 대한 민,형사상의 책임을 부담하지 않으며, 만일 이를 이유로 회사가 타인으로부터 손해배상청구 등 이의 제기를 받은 경우 해당 회원은 그로 인해 발생한 모든 손해를 부담하여야 합니다. <br />
    <br /><br />
    ->게시물 삭제 기준<br />
    -국가이념을 훼손하거나 국가의 정상적인 활동을 저해할 우려가 있는 경우<br />
    -사회질서를 부정하고 조롱하거나 미풍양속에 위반되는 내용의 정보를 유포하는 경우<br />
    -불쾌감을 유발할 수 있는 과도한 욕설과 저속한 비어, 은어, 속어를 사용한 경우<br />
    -수치심이나 혐오감 또는 폭행을 구체적으로 묘사하여 공포심을 일으키는 경우<br />
    -특정 종교 교리를 비방, 왜곡하거나 조롱하는 경우<br />
    -저주성 또는 미신 숭배 내용일 경우<br />
    -허위사실을 고의로 유포하여 이용자들간의 감정 대립을 조장하는경우<br />
    -외설적인 내용으로 성적 수치심과 혐오감을 유발하는 경우<br />
    -저속하거나 음란한 데이터, 소프트웨어, 음악, 사진, 그래픽, 비디오 등의 광고 내용을 담거나 음란사이트를 연결한 게시물 <br />
    -당사자의 허락 없이 개인정보(이름, 주민번호, 지역, 사진) 등을 등록한 경우<br />
    -특정인 또는 단체를 비방하거나 사생활을 부당하게 침해하는 경우<br />
    -저작권이 걸려 있는 소프트 웨어 등을 동의 없이 무료로 다운로드 할 수 있게 하거나, 시리얼 넘버를 공유하는 행위<br />
    -특정 회사나 개인의 이익을 목적으로 상업적 내용을 게재한 경우<br />
    -돈 버는 사이트 소개, 피라미드 식 불법 다단계 사기행위 등 허위사실이나 불법적인 내용을 게재할 경우<br />
    -회사 직원이나 게시판 담당자 등을 사칭하거나 타인의 명의를 도용한 경우<br />
    -서비스와 관련되어 소프트웨어바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 해킹하거나 정보의 파괴 및 혼란을 유발시키는 경우
    </>) },
    { id: 'postservice2', title: '# 관련 기관의 도움을 받고 싶어요', content: (
    <>
    >>계정 도용 의심 확인, 개인 정보 보호 관련 상담 등이 필요하신 경우 아래의 기관에서 도움을 요청하실 수 있습니다.
    <br /><br />
    ->개인정보분쟁조정위원회<br />
    개인정보 침해와 고나련한 상담과 분쟁 조정<br />
    (국번없이) 1833-6972 / HTTP://WWW.KIPICO.GO.KR
    <br /><br />
    ->경찰청 사이버수사국<br />
    해킹, 바이러스, 개인 정보 도용, 게임사기, 인터넷 사기 등 각종 사이버 범죄 신고<br />
    (국번없이) 182 / http://ecrm.cyber.go.kr
    <br /><br />
    ->방송통신심의위원회<br />
    정보 통신상에서의 건전한 문화 창달 및 정보 통신에 올바른 이용 환경 조성<br />
    02-3219-5114 / http://www.kocsc.or.kr
    <br /><br />
    ->방송통신심의위원회 인터넷피해구제<br />
    정보통신망에서 발생하는 명예훼손과 성폭력 등 사이버 권리침해에 대한 다양한 상담과 분쟁 조정<br />
    02-3219-5114 / http://remedy.kocsc.or.kr
    <br /><br />
    ->한국인터넷진흥원<br />
    개인 정보 보호와 관련한 상담 및 개인 정보 침해신고<br />
    (국번없이) 118 / http://www.kisa.or.kr
    </>) },
    { id: 'postservice3', title: '# 술결 이용중 시스템 오류/장애가 발생해요', content: (
    <>
    >>서비스 이용에 불편을 드려 죄송합니다.<br />
    발생하는 오류 현상 및 이미지를 확인하시어 아래 정보와 함께 1:1 게시판 문의를 부탁드립니다. 
    <br /><br />
    [PC]<br />
    ① 브라우저 및 버전명<br />
    ② 결제수단<br />
    ③ 오류 발생 페이지(팝업) 내용 및 오류 현상
    <br /><br />
    [모바일]<br />
    ① 휴대폰(디바이스) 모델명 <br />
    ② 운영체제(안드로이드, 1OS등) 버전명<br />
    ③ 브라우저 및 버전명 <br />
    ④ 술결 앱버전명 <br />
    ⑤ 결제수단<br />
    ⑥ 오류 발생 페이지(팝업) 내용 및 오류 현상
    </>) }
  ]
};

function QnA() {
  const [activeTab, setActiveTab] = useState("whole");

  const handleTabChange = (eventKey) => {
    setActiveTab(eventKey);
  };

  return (
    <>
    <div id="qna_wrap">
      <Container className="qna_container">
        <Nav variant="tabs" activeKey={activeTab} onSelect={handleTabChange} id="myTabs" className="tabColor">
          <Nav.Item>
            <Nav.Link eventKey="whole" className="tab1">🍷전체</Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link eventKey="login" className="tab2">🍻로그인</Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link eventKey="payment" className="tab3">🍸결제</Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link eventKey="event" className="tab4">🍾이벤트</Nav.Link>
          </Nav.Item>
          <Nav.Item>
            <Nav.Link eventKey="postservice" className="tab5">🍹게시글 서비스</Nav.Link>
          </Nav.Item>
        </Nav>

        <div className="tab-content mt-2">
          {Object.keys(tabContents).map((tabKey) => (
            <div key={tabKey} className={`tab-pane fade ${activeTab === tabKey ? 'show active' : ''}`} id={tabKey}>
              <Accordion defaultActiveKey="">
                {tabContents[tabKey].map((item) => (
                  <Accordion.Item key={item.id} eventKey={item.id.toString()}>
                    <Accordion.Header>{item.title}</Accordion.Header>
                    <Accordion.Body>{item.content}</Accordion.Body>
                  </Accordion.Item>
                ))}
              </Accordion>
            </div>
          ))}
        </div>
      </Container>
    </div>  
    </>
  );
}

export default QnA;