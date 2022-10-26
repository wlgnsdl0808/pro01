<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .content { display:none; }
    .content:target { display:block; }

    .page_title { padding-top: 3em; padding-bottom:1em; text-align: center;}
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: deepskyblue; }
    .to_top.on { visibility: visible; }

    .pic_lst { clear:both; width: 100%; }
    .pic_lst li { width: 30%; float:left; margin-right: 5%; margin-bottom: 60px;
    position:relative; }
    .pic_lst li a { display:block; position:relative; }
    .pic_lst li a .pic_fr { width: 100%; height: 300px; overflow:hidden; background-color:#fff;  }
    .pic_lst li a img { display:block; width: 100%; height:auto; }
    .pic_lst li:nth-child(3n) { margin-right: 0; }
    .pic_tit { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color:#222; }
    .pic_com { color: #ff9933;}
    .pic_info { color: #222; }
    .pic_com, .pic_info { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; }
    .sale_price { font-size:16px; font-weight: bold; color:red; }
    .origin_price { text-decoration: line-through; }
    .pic_hd { position:absolute; top:0; left: 0; z-index:10; 
    width: 100%; height:32px; opacity:0.8; text-shadow:2px 2px 0px #fff, 1px 1px 0px #fff;}
    .ht_ico { display:block; float:left; width:100px; line-height: 32px; height: 32px; padding-left: 10px; padding-top: 10px; color:#333; }
    .best:before { content:"BEST"; }
    .new:before { content:"NEW"; position:absolute; top:30px; left: 30px; text-shadow:0px 0px 3px red; color: #fff;}
    .hit:before { content:"HIT"; }

    .thumb_lst { width:50%; float:left; margin-bottom: 50px; }
    .thumb_lst li { clear:both; border-bottom:3px solid #ececec; height: 150px; border-left: 3px solid #ececec; border-right:3px solid #ececec; }
    .thumb_lst li:first-child { border-top:3px solid #ececec; }
    .thumb_lst li a { display:block; }
    .thumb_lst li .img_fr { width: 150px; height: 150px; overflow:hidden; float:left; }
    .thumb_lst li .img_fr img { display:block; width: 100%; height:auto; margin-top : 10px;}
    .thumb_lst li .com_fr { padding-left: 30px; float:left; color:#333; }
    .thumb_tit { line-height: 2.4; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .thumb_com { line-height:2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; color: #ff9933;}
    .thumb_price { line-height: 1.8; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }

    .page_title { padding-top: 1em; }
    .home { color:#333; }
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: #ff9933; }
    .to_top.on { visibility: visible; }

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
                <option>메뉴</option>
                <option value="company.jsp#page1">브랜드소개</option>
                <option value="service.jsp#page1">프로모션</option>
                <option value="custom.jsp#page1">고객문의</option>
                <option value="map.jsp">매장찾기</option>
            </select> &gt;
            <select name="sel2" id="sel2" class="sel">
                <option>전체</option>
                <option value="menu.jsp#page2">버거</option>
                <option value="menu.jsp#page3">세트메뉴</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">버거</h2>
            <div class="con_wrap">
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1663630773-JQZAP.png" alt="pic1"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span></div>
                            <h3 class="pic_tit">야채통통치킨버거</h3>
                            <p class="pic_com">국내산 야채튀김과 닭다리살 패티의 만남!</p>
                            <p class="pic_info">가격 : 5,900원</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1660612192-BOPMR.png" alt="pic2"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span></div>
                            <h3 class="pic_tit">갈릭바베큐치킨버거</h3>
                            <p class="pic_com">바베큐소스와 화이트갈릭소스의 만남!</p>
                            <p class="pic_info">가격 : 5,600원</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1655341040-HOKQW.png" alt="pic3"></div>
                            <div class="pic_hd"><span class="starating on"></span></div>
                            <h3 class="pic_tit">어메이징매콤마요버거</h3>
                            <p class="pic_com">풍성한 매콤함 등장!</p>
                            <p class="pic_info">가격 : 5,600원</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1651127296-ECEIR.png" alt="pic4"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">트리플딥치즈싸이버거</h3>
                            <p class="pic_com">더욱풍성해진 NEW 딥치즈싸이버거!</p>
                            <p class="pic_info">가격 : 5,100원</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1647845660-MZBRZ.png" alt="pic5"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">쉬프림싸이플렉스버거</h3>
                            <p class="pic_com">BEST 통새우버거와 싸이버거의 결합!</p>
                            <p class="pic_info">가격 : 6,500원</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1647845468-DPBRA.png" alt="pic6"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">딥치즈싸이버거</h3>
                            <p class="pic_com">BEST 딥치즈버거가 싸이버거로 재탄생!</p>
                            <p class="pic_info">가격 : 4,800원</p>
                        </a>
                    </li>
                    <h2 class="page_title">세트메뉴</h2>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1616055174-DMJXT.png" alt="pic7"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">싱글떡강정세트</h3>
                            <p class="pic_com">혼자서도 든든하게</p>
                            <p class="pic_info">가격 : 8,900원</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1616055229-UBIKI.png" alt="pic8"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">싱글통다리세트</h3>
                            <p class="pic_com">혼자 먹기 좋은</p>
                            <p class="pic_info">가격 : 9,900원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055285-POUKD.png" alt="pic9"></div>
                            <div class="pic_hd"></span><span class="starating on"></span></div>
                            <h3 class="pic_tit">싱글치킨세트</h3>
                            <p class="pic_com">혼자서도 푸짐하게</p>
                            <p class="pic_info">가격 : 13,400원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055368-MHNJU.png" alt="pic10"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">커플떡강정세트</h3>
                            <p class="pic_com">둘이서 든든하게</p>
                            <p class="pic_info">가격 : 19,100원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055444-JLUYK.png" alt="pic11"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">커플통다리세트</h3>
                            <p class="pic_com">둘이 먹기 좋은</p>
                            <p class="pic_info">가격 : 15,600원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055529-HTPZT.png" alt="pic12"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">커플치킨세트</h3>
                            <p class="pic_com">둘이서 푸짐하게</p>
                            <p class="pic_info">가격 : 19,600원</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <script>
    $(document).ready(function(){
        $(".starating").click(function(){
            if($(this).hasClass("on")){
                $(this).removeClass("on");
            } else {
                $(this).addClass("on");
            }
        });
    });    
    </script>
</div>
<div class="content" id="page2">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="비주얼">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.jsp" class="home">HOME</a> &gt;
            <select name="sel3" id="sel3" class="sel">
                <option>메뉴</option>
                <option value="company.jsp#page1">브랜드소개</option>
                <option value="service.jsp#page1">프로모션</option>
                <option value="custom.jsp#page1">고객문의</option>
                <option value="map.jsp">매장찾기</option>
            </select> &gt;
            <select name="sel4" id="sel4" class="sel">
                <option>버거</option>
                <option value="menu.jsp#page1">전체</option>
                <option value="menu.jsp#page3">세트메뉴</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">버거</h2>
            <br>
                <hr>
                <br>
                <ul class="thumb_lst">
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1663630773-JQZAP.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">야채통통치킨버거</h3>
                                <p class="thumb_com">국내산 야채튀김과 닭다리살 패티의 만남!</p>
                                <p class="thumb_price">가격 : 5,900원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1660612192-BOPMR.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">갈릭바베큐치킨버거</h3>
                                <p class="thumb_com">바베큐소스와 화이트갈릭소스의 만남!</p>
                                <p class="thumb_price">가격 : 5,600원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1655341040-HOKQW.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">어메이징매콤마요버거</h3>
                                <p class="thumb_com">풍성한 매콤함 등장!</p>
                                <p class="thumb_price">가격 : 5,600원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1651127296-ECEIR.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">트리플딥치즈싸이버거</h3>
                                <p class="thumb_com">더욱풍성해진 NEW 딥치즈싸이버거!</p>
                                <p class="thumb_price">가격 : 5,100원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1616055241-EYPWG.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">싸이버거</h3>
                                <p class="thumb_com">맘스터치 대표 버거</p>
                                <p class="thumb_price">가격 : 4,300원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1647845468-DPBRA.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">딥치즈싸이버거</h3>
                                <p class="thumb_com">BEST 딥치즈버거가 싸이버거로 재탄생!</p>
                                <p class="thumb_price">가격 : 4,800원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1647844626-SKNGP.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">화이트갈릭싸이버거</h3>
                                <p class="thumb_com">BEST화이트갈릭 싸이버거로 재탄생!</p>
                                <p class="thumb_price">가격 : 4,900원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1633511562-QIONN.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">텍사스바베큐치킨버거</h3>
                                <p class="thumb_com">텍사스 바베큐가 버거 속으로!</p>
                                <p class="thumb_price">가격 : 5,800원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1616480109-NHROT.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">싸이플렉스버거</h3>
                                <p class="thumb_com">리얼 입찢버거</p>
                                <p class="thumb_price">가격 : 7,200원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/1616480122-HYWCI.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">양념치킨싸이버거</h3>
                                <p class="thumb_com">특제 양념치킨 소스</p>
                                <p class="thumb_price">가격 : 4,400원</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="thumb_lst">
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/JQSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">야채통통치킨버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 8,200원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/BOSEt.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">갈릭바베큐치킨버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 7,900원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/HOSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">어메이징매콤마요버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 7,900원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/ECSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">트리플딥치즈싸이버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 7,400원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/EYSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">싸이버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 6,600원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/DPSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">딥치즈싸이버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 7,100원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/SKSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">화이트갈릭싸이버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 7,200원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/QISET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">텍사스바베큐치킨버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 8,100원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/NHSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">싸이플렉스버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 9,500원</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="img_fr"><img src="./img/HYSET.png" alt=""></div>
                            <div class="com_fr">
                                <h3 class="thumb_tit">양념치킨싸이버거 세트</h3>
                                <p class="thumb_com">세트 구성 : 케이준양념감자, 콜라</p>
                                <p class="thumb_price">가격 : 6,700원</p>
                            </div>
                        </a>
                    </li>
                </ul>
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
                <option>메뉴</option>
                <option value="company.jsp#page1">브랜드소개</option>
                <option value="service.jsp#page1">프로모션</option>
                <option value="custom.jsp#page1">고객문의</option>
                <option value="map.jsp">매장찾기</option>
            </select> &gt;
            <select name="sel6" id="sel6" class="sel">
                <option>세트메뉴</option>
                <option value="menu.jsp#page1">메뉴</option>
                <option value="menu.jsp#page2">버거</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">세트 메뉴</h2>
            <div class="con_wrap">
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1616055174-DMJXT.png" alt="pic1"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">싱글떡강정세트</h3>
                            <p class="pic_com">혼자서도 든든하게</p>
                            <p class="pic_info">가격 : 8,900원</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1616055229-UBIKI.png" alt="pic2"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">싱글통다리세트</h3>
                            <p class="pic_com">혼자 먹기 좋은</p>
                            <p class="pic_info">가격 : 9,900원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055285-POUKD.png" alt="pic3"></div>
                            <div class="pic_hd"></span><span class="starating on"></span></div>
                            <h3 class="pic_tit">싱글치킨세트</h3>
                            <p class="pic_com">혼자서도 푸짐하게</p>
                            <p class="pic_info">가격 : 13,400원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055368-MHNJU.png" alt="pic4"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">커플떡강정세트</h3>
                            <p class="pic_com">둘이서 든든하게</p>
                            <p class="pic_info">가격 : 19,100원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055444-JLUYK.png" alt="pic5"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">커플통다리세트</h3>
                            <p class="pic_com">둘이 먹기 좋은</p>
                            <p class="pic_info">가격 : 15,600원</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <div class="pic_fr"><img src="./img/1616055529-HTPZT.png" alt="pic6"></div>
                            <div class="pic_hd"></span><span class="starating"></span></div>
                            <h3 class="pic_tit">커플치킨세트</h3>
                            <p class="pic_com">둘이서 푸짐하게</p>
                            <p class="pic_info">가격 : 19,600원</p>
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