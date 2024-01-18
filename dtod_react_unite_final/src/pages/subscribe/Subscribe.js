import React, { useEffect, useState } from 'react';
import { Row, Col, Table, Card, CardBody, Button, Pagination, PaginationItem, PaginationLink } from "reactstrap";
import "../../css/subscribe_css/subscribe.css";
import Header from '../../components/Header';
import Footer from '../../components/Footer';
import { Container } from 'react-bootstrap';

const Subscribe = () => {
  const [pays, setPays] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const pageSize = 10;
  const [totalPages, setTotalPages] = useState(0); // 새로운 state 추가

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch(`http://localhost:9005/admin/subscribe?page=${currentPage - 1}&size=${pageSize}`);
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        setPays(data.content);
        setTotalPages(data.totalPages); // 페이징 번호에 대한 정보 업데이트
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();
  }, [currentPage, pageSize]);

  const handlePageChange = (newPage) => {
    setCurrentPage(newPage);
  };

  const renderPageNumbers = () => {
    const pageNumbers = [];
    for (let i = 1; i <= totalPages; i++) {
      pageNumbers.push(
        <PaginationItem key={i} active={i === currentPage}>
          <PaginationLink onClick={() => handlePageChange(i)}>
            {i}
          </PaginationLink>
        </PaginationItem>
      );
    }

    return pageNumbers;
  };

  return (
    <>
    <Header />
    <Container>
    <Row>
      <h2 className='heading'>회원 구독 정보</h2>
      <Col lg="12">
        <Card>
          <CardBody className="">
            <Table bordered>
            <thead>
                <tr className='first_tr'>
                  <th>#</th>
                  <th>상품명</th>
                  <th>가격</th>
                  <th>이름</th>
                  <th>이메일</th>
                  <th>주소</th>
                  <th>구매날짜</th>
                </tr>
              </thead>
              <tbody>
                {pays.map(pay => (
                  <tr key={pay.payId}>
                    <th scope='row' className='first_th'>{pay.payId}</th>
                    <td>{pay.pname}</td>
                    <td>{pay.payAmount}원</td>
                    <td>{pay.pbuyer}</td>
                    <td>{pay.pemail}</td>
                    <td>{pay.paddress}</td>
                    <td>{pay.perTime}</td>
                  </tr>
                ))}
              </tbody>
            </Table>
            <Pagination>
              <PaginationItem disabled={currentPage === 1}>
                <PaginationLink previous onClick={() => handlePageChange(currentPage - 1)} />
              </PaginationItem>
              {renderPageNumbers()}
              <PaginationItem disabled={currentPage === totalPages}>
                <PaginationLink next onClick={() => handlePageChange(currentPage + 1)} />
              </PaginationItem>
            </Pagination>
          </CardBody>
        </Card>
      </Col>
    </Row>
    </Container>
    <Footer />
    </>
  );
};

export default Subscribe;