-- 글 목록
select * from board;
select count(*) as cnt from board;
select * from board where rownum between 1 and 10 order by no desc;
select no, title, content, author, resdate from
(select rownum rn, no, title, content, author, resdate from
board order by no desc) t1 where t1.rn between 1 and 10;

-- 글 상세보기
select a.no no, a.title title, a.content con, b.name nm,
to_char(a.resdate, 'yyyy-MM-dd') res from board a inner join member b
on a.author=b.id wgere a.no=?