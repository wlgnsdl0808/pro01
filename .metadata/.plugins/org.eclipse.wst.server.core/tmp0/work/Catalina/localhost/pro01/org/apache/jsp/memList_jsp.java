/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.23
 * Generated at: 2022-10-26 01:28:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class memList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1666331988706L));
    _jspx_dependants.put("/head.jsp", Long.valueOf(1666332454432L));
    _jspx_dependants.put("/nav.jsp", Long.valueOf(1666746368928L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
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
		rs = pstmt.executeQuery();


      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>맘스터치</title>\r\n");
      out.write("<!-- 메타포 -->\r\n");
      out.write("<!-- 오픈그래프 -->\r\n");
      out.write("<!-- 파비콘 -->\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"wiz_logo/apple-icon-60x60.png\">\r\n");
      out.write("<!-- 각 종 플러그인과 설정 파일 -->\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<!-- 구형 브라우저 html5태그 인식 -->\r\n");
      out.write("<script src=\"js/html5shiv.js\"></script>\r\n");
      out.write("<!-- 구형 브라우저에서 css animation 인식 -->\r\n");
      out.write("<script src=\"js/prefixfree.min.js\"></script>\r\n");
      out.write("<!-- 구형 브라우저에서 미디어쿼리 인식 -->\r\n");
      out.write("<script src=\"js/respond.min.js\"></script>\r\n");
      out.write("<!-- jquery 플러그인 연결 -->\r\n");
      out.write("<script src=\"js/jquery-1.11.1.js\"></script>");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/reset2.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"header.css\">\r\n");
      out.write("    <style>\r\n");
      out.write("    /* header.css */\r\n");
      out.write("    .hd { position:fixed; }\r\n");
      out.write("    /* content */\r\n");
      out.write("    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }\r\n");
      out.write("    .vs img { display:block; width: 100%; height:auto; }\r\n");
      out.write("    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }\r\n");
      out.write("    .bread_fr { width: 1200px; margin: 0 auto; }\r\n");
      out.write("    .page { clear:both; width: 100%; min-height:100vh;}\r\n");
      out.write("    .page:after { content:\"\"; display:block; clear:both; }\r\n");
      out.write("    .page_wrap { width: 1200px; margin: 0 auto; }\r\n");
      out.write("    .page_title { padding-top: 1em; text-align: center; }\r\n");
      out.write("    .home { color:#333; }\r\n");
      out.write("    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }\r\n");
      out.write("    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }\r\n");
      out.write("    .tb tr { display:table-row; }\r\n");
      out.write("    .tb td, .tb th { display:table-cell; }\r\n");
      out.write("    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; \r\n");
      out.write("    color:#fff; background-color:#333; }\r\n");
      out.write("    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }\r\n");
      out.write("\t.tb tr th:first-child { width:80px; text-align:center; }\r\n");
      out.write("\t.tb tr th:nth-child(2) { width:160px; text-align:center; }\r\n");
      out.write("\t.tb tr th:nth-child(3) { width:160px; text-align:center; }\r\n");
      out.write("\t.tb tr th:last-child { text-align:center; }\r\n");
      out.write("    </style>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"footer.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"wrap\">\r\n");
      out.write("    <header class=\"hd\">\r\n");
      out.write("\t\t");
      out.write('\r');
      out.write('\n');

	String id = (String) session.getAttribute("id");
	String email = (String) session.getAttribute("email");
	String name = (String) session.getAttribute("name");
	
	String msg = (String) application.getAttribute("msg");

      out.write("\r\n");
      out.write("<div class=\"hd_wrap\">\r\n");
      out.write("           <a href=\"index.jsp\" class=\"logo\"><img src=\"img/logo.png\" alt=\"로고\"></a>\r\n");
      out.write("           <nav class=\"tnb\">\r\n");
      out.write("           ");

           		if(id !=null && id.equals("admin")){
           
      out.write("\r\n");
      out.write("           \t\t<div>\r\n");
      out.write("           \t\t\t<a href=\"memList.jsp\">회원관리</a>\r\n");
      out.write("           \t\t\t<a href=\"boardList.jsp\">게시판 관리</a>\r\n");
      out.write("               \t\t<a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("           \t\t</div>\r\n");
      out.write("           ");

           		} else if(id != null){
           
      out.write("\r\n");
      out.write("           \t\t<div>\r\n");
      out.write("           \t\t\t<span class=\"id_print\">");
      out.print(name );
      out.write("님</span>\r\n");
      out.write("               \t\t<a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("               \t\t<a href=\"memInfo.jsp\">회원정보</a>\r\n");
      out.write("               \t</div>\r\n");
      out.write("           ");
 
           		} else {
           	
      out.write("\r\n");
      out.write("           \t\t<div>\r\n");
      out.write("               \t\t<a href=\"login.jsp\">로그인</a>\r\n");
      out.write("               \t\t<a href=\"join.jsp\">회원가입</a>\r\n");
      out.write("               \t</div>\t       \r\n");
      out.write("           ");

           		}
           
      out.write("\r\n");
      out.write("           </nav>\r\n");
      out.write("           <nav class=\"gnb\">\r\n");
      out.write("               <ul>\r\n");
      out.write("                   <li class=\"item1\">\r\n");
      out.write("                       <a href=\"company.jsp#page1\" class=\"main\">브랜드스토리</a>\r\n");
      out.write("                       <ul class=\"sub\">\r\n");
      out.write("                           <li><a href=\"company.jsp#page1\">브랜드 소개</a></li>\r\n");
      out.write("                           <li><a href=\"company.jsp#page2\">공지사항</a></li>\r\n");
      out.write("                           <li><a href=\"company.jsp#page3\">광고 영상</a></li>\r\n");
      out.write("                       </ul>\r\n");
      out.write("                   </li>\r\n");
      out.write("                   <li class=\"item2\">\r\n");
      out.write("                       <a href=\"menu.jsp#page1\" class=\"main\">메뉴</a>\r\n");
      out.write("                       <ul class=\"sub\">\r\n");
      out.write("                           <li><a href=\"menu.jsp#page1\">전체</a></li>\r\n");
      out.write("                           <li><a href=\"menu.jsp#page2\">버거</a></li>\r\n");
      out.write("                           <li><a href=\"menu.jsp#page3\">세트메뉴</a></li>\r\n");
      out.write("                       </ul>\r\n");
      out.write("                   </li>\r\n");
      out.write("                   <li class=\"item3\">\r\n");
      out.write("                       <a href=\"service.jsp#page1\" class=\"main\">프로모션</a>\r\n");
      out.write("                       <ul class=\"sub\">\r\n");
      out.write("                           <li><a href=\"service.jsp#page1\">전체</a></li>\r\n");
      out.write("                           <li><a href=\"service.jsp#page2\">진행중</a></li>\r\n");
      out.write("                           <li><a href=\"service.jsp#page3\">종료</a></li>\r\n");
      out.write("                       </ul>\r\n");
      out.write("                   </li>\r\n");
      out.write("                   <li class=\"item4\">\r\n");
      out.write("                       <a href=\"custom.jsp#page1\" class=\"main\">고객문의</a>\r\n");
      out.write("                       <ul class=\"sub\">\r\n");
      out.write("                           <li><a href=\"custom.jsp#page1\">자주하는 질문</a></li>\r\n");
      out.write("                           <li><a href=\"custom.jsp#page2\">Q/A</a></li>\r\n");
      out.write("                           <li><a href=\"boardList.jsp\">게시판</a></li>\r\n");
      out.write("                       </ul>\r\n");
      out.write("                   </li>\r\n");
      out.write("                   <li class=\"item5\">\r\n");
      out.write("                       <a href=\"map.jsp\" class=\"main\">매장찾기</a>\r\n");
      out.write("                       <ul class=\"sub\">\r\n");
      out.write("                       </ul>\r\n");
      out.write("                   </li>\r\n");
      out.write("               </ul>\r\n");
      out.write("           </nav>\r\n");
      out.write("       </div>");
      out.write("\r\n");
      out.write("    </header>\r\n");
      out.write("    <div class=\"content\">\r\n");
      out.write("        <figure class=\"vs\">\r\n");
      out.write("            <img src=\"./img/p_brand_1.jpg\" alt=\"비주얼\">\r\n");
      out.write("        </figure>\r\n");
      out.write("        <div class=\"bread\">\r\n");
      out.write("            <div class=\"bread_fr\">\r\n");
      out.write("                <a href=\"index.jsp\" class=\"home\">HOME</a> &gt;\r\n");
      out.write("                <span class=\"sel\">회원목록</span>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <section class=\"page\">\r\n");
      out.write("            <div class=\"page_wrap\">\r\n");
      out.write("                <h2 class=\"page_title\">회원목록</h2>\r\n");
      out.write("  \t\t\t\t<div class=\"tb_fr\">\r\n");
      out.write("  \t\t\t\t\t<table class=\"tb\">\r\n");
      out.write("  \t\t\t\t\t\t<thead>\r\n");
      out.write("  \t\t\t\t\t\t\t<tr>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<th>연번</th>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<th>아이디</th>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<th>이름</th>\r\n");
      out.write("  \t\t\t\t\t\t\t\t<th>가입일</th>\r\n");
      out.write("  \t\t\t\t\t\t\t</tr>\r\n");
      out.write("  \t\t\t\t\t\t</thead>\r\n");
      out.write("  \t\t\t\t\t\t<tbody>             \r\n");
      out.write("\t\t\t\t\t\t\t");

								int cnt = 0;
								while(rs.next()){
									cnt+=1;
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>");
      out.print(cnt );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><a href='memberInfo.jsp?id=");
      out.print(rs.getString("id") );
      out.write('\'');
      out.write('>');
      out.print(rs.getString("id") );
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>");
      out.print(rs.getString("name") );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>");
      out.print(rs.getString("regdate") );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t");

									}
								} catch(Exception e){
									e.printStackTrace();
								} finally {
									rs.close();
									pstmt.close();
									con.close();
								}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</tbody> \r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </section>\r\n");
      out.write("    </div>\r\n");
      out.write("    <footer class=\"ft\">\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("<div class=\"ft_wrap\">\r\n");
      out.write("        <div class=\"ft_logo\"><img src=\"img/logo.png\" alt=\"하단로고\"></div>\r\n");
      out.write("        <div class=\"mid_box\">\r\n");
      out.write("            <nav class=\"fnb\">\r\n");
      out.write("                <a href=\"member01.html\">개인정보 처리 방침</a>\r\n");
      out.write("                <a href=\"member02.html\">이용약관</a>\r\n");
      out.write("                <a href=\"member03.html\">이메일무단수집거부</a>\r\n");
      out.write("            </nav>\r\n");
      out.write("            <p class=\"addr\">\r\n");
      out.write("                ㈜맘스터치앤컴퍼니 | 대표이사 | 김동전 사업자등록번호 676-86-00102<br>\r\n");
      out.write("                서울시 강동구 천호대로 1077 이스트센트럴타워 24,25층<br>\r\n");
      out.write("                통신판매업 신고번호 : 제2015-서울강동-0155호<br>\r\n");
      out.write("                대표전화 1661-4205 | 팩스 02-418-0279, 070-4676-0635  \r\n");
      out.write("            </p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script>\r\n");
      out.write("    function sel_link(sel){\r\n");
      out.write("        location.href = sel.value;\r\n");
      out.write("    }\r\n");
      out.write("    </script>\r\n");
      out.write("</div>>");
      out.write("\r\n");
      out.write("    </footer>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
