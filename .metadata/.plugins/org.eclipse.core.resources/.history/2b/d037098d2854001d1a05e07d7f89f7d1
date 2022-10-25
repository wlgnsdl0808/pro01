<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charest=UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
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
		sql = "select * from member";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			session.setAttribute("id", rs.getString("id"));
			session.setAttribute("pw", rs.getString("pw"));
			session.setAttribute("name", rs.getString("name"));
			session.setAttribute("tel", rs.getString("tel"));
			session.setAttribute("email", rs.getString("email"));
			session.setAttribute("regdate", rs.getString("regdate"));
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "head.jsp" %>
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

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width: 700px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:200px; height: 48px;  }
    .frm_tb td { width:500px; height: 48px; }
      
    </style>
    <link rel="stylesheet" href="css/footer.css">
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
</head>
<body>
<div class="wrap">
<header class="hd">
    <%@ include file = "nav.jsp" %>
</header>
<div class="content">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="비주얼">
    </figure>
    <div class="bread">
        <div class="bread_fr">
            <a href="index.jsp" class="home">HOME</a> &gt;
            <span class="sel">회원가입</span>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">회원가입</h2>
        </div>
    </section>
</div>
</div>
</body>
</html>