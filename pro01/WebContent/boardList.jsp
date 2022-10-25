<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.* ,java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charest=UTF-8");
	
	String id = request.getParameter("id");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from board where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			
		} else {
			
		}
	}
 %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="head.jsp" %>
<link rel="stylesheet" href="css/reset2.css">
<link rel="stylesheet" href="css/header.css">
<style>
/* header.css */
.hd { position: fixed;}
/* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .content { display:none; }
    .content:target { display:block; }

    .page_title { padding-top: 1em; }
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: deepskyblue; }
    .to_top.on { visibility: visible; }

    .noti_lst {  width: 1200px; float:left; }
    .noti_lst li { clear:both; height:32px; border-bottom:1px solid #333;
    box-sizing:border-box; }
    .noti_lst li:first-child { border-top:2px solid #333; }
    .noti_lst li:last-child { border-bottom:2px solid #333; }
    .noti_lst li span { display:block; box-sizing:border-box; float:left;
    line-height: 32px; font-size:20px; }
    .noti_num { width: 60px; text-align:center; }
    .not_tit { width: 950px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .item_hd { font-weight:600; }
    .not_tit.item_hd { text-align: center; }
    .not_tit a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }
    .noti_auth { width: 80px; text-align: center; }
    .noti_date { width: 110px; text-align: center; }    

</style>
<script>
    $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });   
</script>
<link rel="stylesheet" href="css/footer.css">
</head>
<body>
<div class="wrap">
<header class="hd">
    <%@ include file="nav.jsp" %>
</header>
<div class="content" id="page1">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="비주얼">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.html" class="home">HOME</a> &gt;
            <select name="sel1" id="sel1" class="sel">
                <option>고객문의</option>
                <option value="company.html#page1">브랜드소개</option>
                <option value="menu.html#page1">메뉴</option>
                <option value="service.html#page1">프로모션</option>
                <option value="map.html">매장찾기</option>
            </select> &gt;
            <select name="sel2" id="sel2" class="sel">
                <option>자주하는 질문</option>
                <option value="custom.html#page2">Q/A</option>
                <option value="custom.html#page3">게시판</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">자주하는 질문</h2>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">글 목록</h2>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">연번</span>
                            <span class="not_tit item_hd">제목</span>
                            <span class="noti_auth item_hd">작성자</span>
                            <span class="noti_date item_hd">작성일</span>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
    </section>
</div>
<script>
    var sel = document.getElementsByClassName("sel");
    for(var i=0;i<sel.length;i++){
        sel[i].addEventListener("change", function(){
            location.href = this.value;
        });
    }
</script>
<footer class="ft">
    <%@ include file="footer.jsp" %>
</footer>
</div>
<a href="#" class="to_top">↑</a>
</body>
</html>