<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    .page_title { padding-top: 1em; padding-bottom:1em; }
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: deepskyblue; }
    .to_top.on { visibility: visible; }

    .pic_lst { clear:both; width: 100%; }
    .pic_lst li { width: 30%; float:left; margin-right: 5%; margin-bottom: 30px; position:relative; }
    .pic_lst li a { display:block; position:relative; }
    .pic_lst li a .pic_fr { width: 100%; height: 240px; overflow:hidden; background-color:#fff;  }
    .pic_lst li a img { display:block; width: 100%; height:auto; }
    .pic_lst li:nth-child(3n) { margin-right: 0; }
    .pic_tit { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color:#222; }
    .pic_com { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color: #ff9933;}
    .sale_price { font-size:16px; font-weight: bold; color:red; }
    .origin_price { text-decoration: line-through; }
    .pic_hd { position:absolute; top:0; left: 0; z-index:10; width: 100%; height:32px; opacity:0.8; text-shadow:2px 2px 0px #fff, 1px 1px 0px #fff;}
    .ht_ico { display:block; float:left; width:100px; line-height: 32px; height: 32px; padding-left: 10px; padding-top: 10px; color:#333; }

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
    <%@ include file = "nav.jsp" %>
</header>
<div class="content" id="page1">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="비주얼">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.jsp" class="home">HOME</a> &gt;
            <select name="sel1" id="sel1" class="sel">
                <option>프로모션</option>
                <option value="company.jsp#page1">브랜드소개</option>
                <option value="menu.jsp#page1">메뉴</option>
                <option value="custom.jsp#page1">고객문의</option>
                <option value="map.jsp">매장찾기</option>
            </select> &gt;
            <select name="sel2" id="sel2" class="sel">
                <option>전체</option>
                <option value="service.jsp#page2">진행중</option>
                <option value="service.jsp#page3">종료</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">전체</h2>
            <div class="con_wrap">
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1665133813-NCVMY.png" alt="pic1"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span><span class="starating on"></span></div>
                            <h3 class="pic_tit">펩시×맘스터치 감성폴딩박스 선착순 한정판매</h3>
                            <p class="pic_com">2022-10-06 ~ 2022-10-31</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1664935079-HOWFG.png" alt="pic2"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">앵콜! 10/7 야채통통 치킨버거 무료 세트업!</h3>
                            <p class="pic_com">2022-10-06 ~ 2022-10-07</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1664525036-YUPBF.png" alt="pic3"></div>
                            <div class="pic_hd"><span class="starating on"></span></div>
                            <h3 class="pic_tit">SKT T멤버십 New 0 weeks!</h3>
                            <p class="pic_com">2022-10-14 ~ 2022-10-21</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1664265674-LDKWT.png" alt="pic4"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">트리플딥치즈비프버거 무료세트업</h3>
                            <p class="pic_com">2022-09-28 ~ 2022-09-29</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1663293097-BFGUQ.png" alt="pic5"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">9/23 단 하루! 야채통통치킨버거 무료 세트업!</h3>
                            <p class="pic_com">2022-09-23 2022-09-23</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1663293097-BFGUQ.png" alt="pic6"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">배달의민족에서 일주일 간 할인</h3>
                            <p class="pic_com">2022-09-23 ~ 2022-09-30</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</div>
<div class="content" id="page2">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="비주얼">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.jsp" class="home">HOME</a> &gt;
            <select name="sel3" id="sel3" class="sel">
                <option>프로모션</option>
                <option value="company.jsp#page1">브랜드소개</option>
                <option value="menu.jsp#page1">메뉴</option>
                <option value="custom.jsp#page1">고객문의</option>
                <option value="map.jsp">매장찾기</option>
            </select> &gt;
            <select name="sel4" id="sel4" class="sel">
                <option>진행중</option>
                <option value="service.jsp#page1">전체</option>
                <option value="service.jsp#page3">종료</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">진행중</h2>
            <div class="con_wrap">
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1665133813-NCVMY.png" alt="pic1"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span><span class="starating on"></span></div>
                            <h3 class="pic_tit">펩시×맘스터치 감성폴딩박스 선착순 한정판매</h3>
                            <p class="pic_com">2022-10-06 ~ 2022-10-31</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1664525036-YUPBF.png" alt="pic3"></div>
                            <div class="pic_hd"><span class="starating on"></span></div>
                            <h3 class="pic_tit">SKT T멤버십 New 0 weeks!</h3>
                            <p class="pic_com">2022-10-14 ~ 2022-10-21</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</div>
<div class="content" id="page3">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="비주얼">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.jsp" class="home">HOME</a> &gt;
            <select name="sel5" id="sel5" class="sel">
                <option>프로모션</option>
                <option value="company.jsp#page1">브랜드소개</option>
                <option value="menu.jsp#page1">메뉴</option>
                <option value="custom.jsp#page1">고객문의</option>
                <option value="map.jsp">매장찾기</option>
            </select> &gt;
            <select name="sel6" id="sel6" class="sel">
                <option>종료</option>
                <option value="service.jsp#page1">전체</option>
                <option value="service.jsp#page2">진행중</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">종료</h2>
            <div class="con_wrap">
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1664935079-HOWFG.png" alt="pic2"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">앵콜! 10/7 야채통통 치킨버거 무료 세트업!</h3>
                            <p class="pic_com">2022-10-06 ~ 2022-10-07</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1664265674-LDKWT.png" alt="pic4"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">트리플딥치즈비프버거 무료세트업</h3>
                            <p class="pic_com">2022-09-28 ~ 2022-09-29</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1663293097-BFGUQ.png" alt="pic5"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">9/23 단 하루! 야채통통치킨버거 무료 세트업!</h3>
                            <p class="pic_com">2022-09-23 2022-09-23</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1663293097-BFGUQ.png" alt="pic6"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">배달의민족에서 일주일 간 할인</h3>
                            <p class="pic_com">2022-09-23 ~ 2022-09-30</p>
                        </a>
                    </li>
                </ul>
            </div>
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
    <%@ include file = "footer.jsp" %>
</footer>
</div>
<a href="#" class="to_top">↑</a>
</body>
</html>