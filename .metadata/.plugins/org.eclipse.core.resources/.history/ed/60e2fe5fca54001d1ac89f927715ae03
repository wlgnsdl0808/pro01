<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String email = (String) session.getAttribute("email");
	String name = (String) session.getAttribute("name");
	
	String msg = (String) application.getAttribute("msg");
%>
<div class="hd_wrap">
           <a href="index.jsp" class="logo"><img src="img/logo.png" alt="로고"></a>
           <nav class="tnb">
           <%
           		if(id !=null && id.equals("admin")){
           %>
           		<div>
           			<a href="memList.jsp">회원관리</a>
           			<a href="boardList.jsp">게시판 관리</a>
               		<a href="logout.jsp">로그아웃</a>
           		</div>
           <%
           		} else if(id != null){
           %>
           		<div>
           			<span class="id_print"><%=name %>님</span>
               		<a href="logout.jsp">로그아웃</a>
               		<a href="memInfo.jsp">회원정보</a>
               	</div>
           <% 
           		} else {
           	%>
           		<div>
               		<a href="login.jsp">로그인</a>
               		<a href="join.jsp">회원가입</a>
               	</div>	       
           <%
           		}
           %>
           </nav>
           <nav class="gnb">
               <ul>
                   <li class="item1">
                       <a href="company.jsp#page1" class="main">브랜드스토리</a>
                       <ul class="sub">
                           <li><a href="company.jsp#page1">브랜드 소개</a></li>
                           <li><a href="company.jsp#page2">공지사항</a></li>
                           <li><a href="company.jsp#page3">광고 영상</a></li>
                       </ul>
                   </li>
                   <li class="item2">
                       <a href="menu.jsp#page1" class="main">메뉴</a>
                       <ul class="sub">
                           <li><a href="menu.jsp#page1">전체</a></li>
                           <li><a href="menu.jsp#page2">버거</a></li>
                           <li><a href="menu.jsp#page3">세트메뉴</a></li>
                       </ul>
                   </li>
                   <li class="item3">
                       <a href="service.jsp#page1" class="main">프로모션</a>
                       <ul class="sub">
                           <li><a href="service.jsp#page1">전체</a></li>
                           <li><a href="service.jsp#page2">진행중</a></li>
                           <li><a href="service.jsp#page3">종료</a></li>
                       </ul>
                   </li>
                   <li class="item4">
                       <a href="custom.jsp#page1" class="main">고객문의</a>
                       <ul class="sub">
                           <li><a href="custom.jsp#page1">자주하는 질문</a></li>
                           <li><a href="custom.jsp#page2">Q/A</a></li>
                           <li><a href="custom.jsp#page3">게시판</a></li>
                       </ul>
                   </li>
                   <li class="item5">
                       <a href="map.jsp" class="main">매장찾기</a>
                       <ul class="sub">
                       </ul>
                   </li>
               </ul>
           </nav>
       </div>