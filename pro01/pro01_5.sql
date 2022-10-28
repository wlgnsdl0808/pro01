-- 질문 및 답변 테이블 생성

CREATE table qnaa (
    no number PRIMARY key,
    title VARCHAR2(100) not null,
    content VARCHAR2(1000) not null,
    author VARCHAR2(20) not null,
    resdate date not null,
    lev number not null,
    parno number not null,
    sec char(1)
);
CREATE SEQUENCE qesq;

-- 더미 데이터 추가

insert into qnaa values (qesq.nextval, '문의 합니다. 테스트 글1', '문의합니다. 테스트 글1의 내용입니다.','kjh', sysdate, 0, qesq.currval, 'N');
insert into qnaa values (qesq.nextval, '문의 합니다. 테스트 글2', '문의합니다. 테스트 글2의 내용입니다.','kjh', sysdate, 0, qesq.currval, 'Y');
insert into qnaa values (qesq.nextval, '문의 합니다. 테스트 글3', '문의합니다. 테스트 글3의 내용입니다.','asdas', sysdate, 0, qesq.currval, 'N');
insert into qnaa values (qesq.nextval, '문의 합니다. 테스트 글4', '문의합니다. 테스트 글4의 내용입니다.','asdas', sysdate, 0, qesq.currval, 'N');
insert into qnaa values (qesq.nextval, '문의 합니다. 테스트 글5', '문의합니다. 테스트 글5의 내용입니다.','kjh', sysdate, 0, qesq.currval, 'N');
insert into qnaa values (qesq.nextval, '문의 합니다. 테스트 글6', '문의합니다. 테스트 글6의 내용입니다.','asdas', sysdate, 0, qesq.currval, 'Y');
insert into qnaa values (qesq.nextval, '답변입니다. 테스트 글1', '답변입니다. 테스트 글1의 내용입니다.','kjh', sysdate, 1, 1, 'N');

select * from qnaa order by parno desc, lev asc;

select * from faqa;