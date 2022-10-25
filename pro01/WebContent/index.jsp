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

/* content */
.page { clear:both; width: 100%; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    #page1, #page3 { background-color:#ececec; }
    .page_tit { text-align: center; font-size:32px; padding-top:1.2em; padding-bottom: 0.8em; }
    .lst { clear:both; width: 1200px; }
    .lst:after { content:""; display:block; clear: both;}
    .lst li { margin-bottom: 40px; }
    .lst li.left { float:left; width: 816px; height: 459px; }
    .lst li.right { float:right; width:350px; height: 459px; }
    .ico_lst { clear:both; width: 100%; overflow:hidden; }
    .ico_lst li a { display:block; background-repeat: no-repeat; background-position:0px center; background-size:auto 80%; padding-left: 55px; }
    .ico_lst li a.icon1 { background-image: url("./icon/free-icon-one-6055946.png"); }
    .ico_lst li a.icon2 { background-image: url("./icon/free-icon-two-6055966.png");}
    .ico_lst li a.icon3 { background-image: url("./icon/free-icon-three-6055984.png"); }
    .cate_tit { color:#222; font-size:20px; padding-bottom: 0.5em; }
    .cate_com { color:#222; font-size:14px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis; }

    #page2 { background-color: rgba(230, 248, 255, 0.5); }
    .pic_lst { clear:both; width: 100%; padding-bottom: 80px; }
    .pic_lst:after { content:""; display:block; clear:both; }
    .pic_lst li { float:left; position:relative; margin-bottom: 40px; }
    .pic_lst li a { display:block; width: 360px; margin-right: 40px; overflow: hidden; height: 300px; }
    .pic_lst li a img { display:block; width:600px; margin-left: -120px; transition-duration:0.8s; }
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; text-shadow:0px 0px 3px red; }
    .pic_com { position:absolute; right:30px; bottom:30px; text-shadow:0px 0px 3px blue; }

    #page3 { background-repeat: no-repeat; 
    background-size: cover; 
    background-position:center center; height: 100vh; background-image:url("./img/bg_partners.jpg"); overflow:hidden; }
    #page3 .page_wrap { width: 100%; }
    .circle_lst { clear:both; width: 4455px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff;
    float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst li a { display:block; width: 100%; height: 100%; }
    .circle_lst li a img { display:block; width:160px; height:auto; 
    position:absolute; top:50%; left: 20px; z-index:11; margin-top: -28px; }

    /* footer */
    
    </style>
    <link rel="stylesheet" href="css/footer.css">
    <script>
    $(document).ready(function(){
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=600){
                $(".hd").css("position","fixed");
            } else {
                $(".hd").css("position","absolute");
            }
        });
        $
        $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
        $lst1_obj = $(".circle_lst li").clone();
        $(".circle_lst.lst2").append($lst1_obj);
    });     
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
        <%@ include file="nav.jsp" %>
    </header>
<div class="content">
    <figure class="vs">
        <video src="vidio/mom.mp4" autoplay muted loop class="vdo"></video>
    </figure>
    <section class="page" id="page1">
        <div class="page_wrap">
            <h2 class="page_tit">광고 영상</h2>
            <ul class="lst">
                <li class="left">
                    <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/embed/b43YTcBvyzY" title="맘스터치 치즈홀릭버거 에멘탈 30" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </li>
                <li class="right">
                    <ul class="ico_lst">
                        <li>
                            <a href="https://www.youtube.com/embed/b43YTcBvyzY" target="vdo2" class="icon1">
                                <h3 class="cate_tit">맘스터치</h3>
                                <p class="cate_com">치즈홀릭버거 에멘탈</p>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/embed/pzPPteotgtg" target="vdo2" class="icon2">
                                <h3 class="cate_tit">맘스터치</h3>
                                <p class="cate_com">언블리버블 버거</p>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/embed/RtixVPqEvdQ" target="vdo2" class="icon3">
                                <h3 class="cate_tit">맘스터치</h3>
                                <p class="cate_com">인크레더블 버거</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </section>
    <section class="page" id="page2">
        <div class="page_wrap">
            <h2 class="page_tit">맘스터치<br>메뉴</h2>
            <ul class="pic_lst">
                <li>
                    <a href="">
                        <img src="img/1663630773-JQZAP.png" alt="맘스터치 야채통통치킨버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">NEW</h3>
                            <p class="pic_com">야채통통 치킨 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1660612192-BOPMR.png" alt="맘스터치 갈릭바베큐버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">NEW</h3>
                            <p class="pic_com">갈릭 바베큐 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1655341040-HOKQW.png" alt="맘스터치 어메이징매콤마요버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">맘스터치</h3>
                            <p class="pic_com">어메이징 매콤 마요 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1651127296-ECEIR.png" alt="맘스터치 트리플딥치즈싸이버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">맘스터치</h3>
                            <p class="pic_com">트리플 딥 치즈 싸이 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1647845660-MZBRZ.png" alt="맘스터치 쉬프림싸이플렉스버거"class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">맘스터치</h3>
                            <p class="pic_com">쉬프림 싸이 플렉스 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1616480109-NHROT.png" alt="맘스터치 싸이플렉스버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">BEST</h3>
                            <p class="pic_com">싸이 플렉스 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1647844626-SKNGP.png" alt="맘스터치 화이트갈릭싸이버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">맘스터치</h3>
                            <p class="pic_com">화이트 갈릭 싸이 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1633511562-QIONN.png" alt="맘스터치 텍사스바베큐치킨버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">맘스터치</h3>
                            <p class="pic_com">텍사스 바베큐 치킨 버거</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="img/1616480122-HYWCI.png" alt="맘스터치 양념치킨싸이버거" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">맘스터치</h3>
                            <p class="pic_com">양념치킨 싸이 버거</p>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </section>
    <section class="page" id="page3">
        <div class="page_wrap">
            <h2 class="page_tit">믿고 맡길 수 있는<br>WE DISPLAY<br>전문 파트너스</h2>
            <ul class="circle_lst lst1">
                <li><a href=""><img src="./img/thumb/partner01.png" alt="파트너스01" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner02.png" alt="파트너스02" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner03.png" alt="파트너스03" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner04.png" alt="파트너스04" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner05.png" alt="파트너스05" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner06.png" alt="파트너스06" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner07.png" alt="파트너스07" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner08.png" alt="파트너스08" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner09.png" alt="파트너스09" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner10.png" alt="파트너스10" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner11.png" alt="파트너스11" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner12.png" alt="파트너스12" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner13.png" alt="파트너스13" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner14.png" alt="파트너스14" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner15.png" alt="파트너스15" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner16.png" alt="파트너스16" class="thumb"></a></li>
                <li><a href=""><img src="./img/thumb/partner17.png" alt="파트너스17" class="thumb"></a></li>
            </ul>
        </div>
    </section>
</div>
<footer class="ft">
    <%@ include file="footer.jsp" %>
</footer>
</div>
</body>
</html>