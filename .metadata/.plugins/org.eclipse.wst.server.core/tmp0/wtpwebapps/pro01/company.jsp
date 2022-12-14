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

    .page_title { padding-top: 1em; text-align: center;}
    .page_title1 { padding-top: 1em; text-align: center; margin-bottom: 30px;}
    .page_title2 { text-align: left;}
    .home { color:#333; }
    
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover { background-color: #ff9933; }
    .to_top.on { visibility: visible; }

    .pic_lst { clear:both; width: 100%; }
    .pic_lst li { width: 30%; float:left; margin-right: 5%; margin-bottom: 60px; position:relative; }
    .pic_lst li a { display:block; position:relative; }
    .pic_lst li a .pic_fr { width: 100%; height: 220px; overflow:hidden; background-color:#fff;  }
    .pic_lst li a img { display:block; width: 100%; height:auto; }
    .pic_lst li:nth-child(3n) { margin-right: 0; }
    .pic_tit { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color:#222; text-align: center;}
    .pic_com { line-height:2; overflow:hidden; text-overflow: ellipsis; white-space:nowrap; color: #ff9933; text-align: center;}
    .sale_price { font-size:16px; font-weight: bold; color:red; }
    .origin_price { text-decoration: line-through; }
    .pic_hd { position:absolute; top:0; left: 0; z-index:10; width: 100%; height:32px; opacity:0.8; text-shadow:2px 2px 0px #fff, 1px 1px 0px #fff;}
    .ht_ico { display:block; float:left; width:100px; line-height: 32px; height: 32px; padding-left: 10px; padding-top: 10px; color:#333; }

    .noti_lst {  width: 1200px; float:left; }
    .noti_lst li { clear:both; height:32px; border-bottom:1px solid #333; box-sizing:border-box; }
    .noti_lst li:first-child { border-top:2px solid #333; }
    .noti_lst li:last-child { border-bottom:2px solid #333; }
    .noti_lst li span { display:block; box-sizing:border-box; float:left; line-height: 32px; font-size:18px; }
    .noti_num { width: 60px; text-align:center; }
    .not_tit { width: 950px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
    .item_hd { font-weight:600; }
    .not_tit.item_hd { text-align: center; }
    .not_tit a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }
    .noti_auth { width: 80px; text-align: center; }
    .noti_date { width: 110px; text-align: center; }  

    .frm { border:2px solid #eee; padding: 24px; width: 1200px; margin:50px auto; }



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
        <img src="img/p_brand_1.jpg" alt="?????????">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.jsp" class="home">HOME</a> &gt;
            <select name="sel1" id="sel1" class="sel">
                <option>??????????????????</option>
                <option value="menu.jsp#page1">??????</option>
                <option value="service.jsp#page1">????????????</option>
                <option value="custom.jsp#page1">????????????</option>
                <option value="map.jsp">????????????</option>
            </select> &gt;
            <select name="sel2" id="sel2" class="sel">
                <option>???????????????</option>
                <option value="company.jsp#page2">????????????</option>
                <option value="company.jsp#page3">????????????</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">????????? ??????</h2>
            <div class="conetent">
                <div class="description">
                    <h4>???????????? NO.1??? ??????,<br> ??? ?????? NO.1??? ?????????<br>??????&?????? ????????? ???????????? ?????????.</h4>
                </div>
                <figure class="desciption-images"><img src="/assets/images/brand/p_brand_1.jpg"  alt="????????? ?????? ?????????"></figure>
                <div class="description-more">
                    <ul>
                        <li>
                            <h5>Brand Mission</h5>
                            <p>????????? ????????? ?????? ??????, ??????, ????????? ????????? ??????????????????.</p>
                        </li>
                        <li style="float: left;">
                            <h5 style="margin-right: 45px;">Brand Vision</h5>
                            <p>?????? ?????? ??? ??? ????????? ???????????? ?????????????????? ?????? ???????????? NO.1 ?????? ????????? ???????????????.</p>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <section class="section brand-identity">
            <header>
                <h3>????????? ???????????????</h3>
                <p>??????????????? ???????????? ??? ?????? ????????? ???????????????.<br>????????? ???????????? ?????? ?????? ??????????????? ????????? ?????? ????????????.</p>
            </header>
            <div class="logo">
                <div class="list">
                    <div class="item">
                        <h4>brand logo</h4><img src="../../assets/images/brand/new_logo_brand_1.png" alt="moms touch logo" style="width:30vw;">
                    </div>
                    <div class="item">
                        <img src="../../assets/images/brand/new_logo_brand_2.png" alt="moms touch logo" style="width:40vw;">
                    </div>
                    <div class="item">
                        <h4>Color Concept</h4>
                        <p>???????????? ??????????????? ?????? ????????? ???????????? ???????????? ???????????? ?????? ????????? ?????? ????????????.<br>??? ????????? ????????? ??????????????? ??????????????? ???????????????.</p>
                        <ul>
                            <li><img src="/assets/images/brand/img_brand_1.jpg" alt="mom???s touch PATTY YELLOW #F2A900">
                                <p><span>????????? ???????????? ?????????<br>????????????</span></p>
                            </li>
                            <li><img src="/assets/images/brand/img_brand_2.jpg" alt="mom???s touch TOWN GRAY #D7D2CB">
                                <p><span>?????? ??????????????? ?????????<br>??????????????? ?????? ??????</span></p>
                            </li>
                            <li><img src="/assets/images/brand/img_brand_3.jpg" alt="mom???s TOUCH EARTH BROWN #5C4738">
                                <p><span>????????? ???????????? ????????? ??????<br>???????????? ????????? ?????? ??????</span></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section class="section store-identity">
            <header>
                <h3>????????? ???????????????</h3>
                <p>???????????? ????????? ????????? ?????? ????????? ?????????<br>??????????????? ????????? ????????? ???????????????. <span>?????????, ????????? ????????? ???????????? ???????????? ?????????, ?????? ?????? ??? ????????? ????????? ????????? ????????? ????????? ???????????? ????????? ????????? ????????? ????????? ???????????? ?????? ??? ????????? ????????????</span></p>
            </header>
            <div class="contents">
                <div class="swiper-contents">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <!--<div class="swiper-slide"><img src="/m/assets/images/@temp_franchise_open_condition.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="/m/assets/images/@temp_franchise_open_condition.jpg" alt=""></div>-->
                            <div class="swiper-slide"><img src="/assets/images/franchise/p_open_condition_1.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="/assets/images/franchise/p_open_condition_2.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="/assets/images/franchise/p_open_condition_3.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="/assets/images/franchise/p_open_condition_5.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="/assets/images/franchise/p_open_condition_6.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="/assets/images/franchise/p_open_condition_7.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="/assets/images/franchise/p_open_condition_8.jpg" alt=""></div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
            <div class="by"></div>
        </section>
        </div>
    </section>
</div>
<div class="content" id="page2">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="?????????">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.jsp" class="home">HOME</a> &gt;
            <select name="sel3" id="sel3" class="sel">
                <option>??????????????????</option>
                <option value="menu.jsp#page1">??????</option>
                <option value="service.jsp#page1">????????????</option>
                <option value="custom.jsp#page1">????????????</option>
                <option value="map.jsp">????????????</option>
            </select> &gt;
            <select name="sel4" id="sel4" class="sel">
                <option>????????????</option>
                <option value="company.jsp#page1">???????????????</option>
                <option value="company.jsp#page3">????????????</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title1">?????? ??????</h2>
            <div class="con_wrap">
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1663321480-LZGRE.jpg" alt="pic1"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span><span class="starating on"></span></div>
                            <p class="pic_com">2022-09-16</p>
                            <h3 class="pic_tit">???????????? 9??? ?????? ????????? ??????</h3>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1658302996-DVENX.png" alt="pic2"></div>
                            <div class="pic_hd"><span class="ht_ico new"></span><span class="starating"></span></div>
                            <p class="pic_com">2022-07-20</p>
                            <h3 class="pic_tit">????????? ???????????? ??????</h3>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr"><img src="./img/1657781500-VVKKB.jpg" alt="pic3"></div>
                            <div class="pic_hd"><span class="starating on"></span></div>
                            <p class="pic_com">2022-07-14</p>
                            <h3 class="pic_tit">???????????? ??????????????? ??????????????? ??????</h3>
                        </a>
                    </li>
                </ul>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h4 class="page_title2">??????</h4>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">??????</span>
                            <span class="not_tit item_hd">??????</span>
                            <span class="noti_auth item_hd">?????????</span>
                            <span class="noti_date item_hd">?????????</span>
                        </li>
                        <li>
                            <span class="noti_num">1</span>
                            <span class="not_tit"><a href="">?????????????????????????????? ??????!</a></span>
                            <span class="noti_auth">?????????</span>
                            <span class="noti_date">2022-09-27</span>
                        </li>
                        <li>
                            <span class="noti_num">2</span>
                            <span class="not_tit"><a href="">???????????? ???????????????????????? ??????!</a></span>
                            <span class="noti_auth">?????????</span>
                            <span class="noti_date">2022-09-20</span>
                        </li>
                        <li>
                            <span class="noti_num">3</span>
                            <span class="not_tit"><a href="">???????????? 9??? ?????? ????????? ??????</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2022-09-16</span>
                        </li>
                        <li>
                            <span class="noti_num">4</span>
                            <span class="not_tit"><a href="">???????????? ?????? ??????????????? ?????? ????????????.</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2022-08-01</span>
                        </li>
                        <li>
                            <span class="noti_num">5</span>
                            <span class="not_tit"><a href="">????????? ???????????? ??????</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2022-07-20</span>
                        </li>
                        <li>
                            <span class="noti_num">6</span>
                            <span class="not_tit"><a href="">???????????? ??????????????? ??????????????? ??????</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2022-07-14</span>
                        </li>
                        <li>
                            <span class="noti_num">7</span>
                            <span class="not_tit"><a href="">???????????? ???????????? ??????</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2022-06-07</span>
                        </li>
                        <li>
                            <span class="noti_num">8</span>
                            <span class="not_tit"><a href="">???????????? ????????? ?????? ?????? ????????????</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2021-11-15</span>
                        </li>
                        <li>
                            <span class="noti_num">9</span>
                            <span class="not_tit"><a href="">????????? ?????? ???????????? ?????? ??????</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2021-08-27</span>
                        </li>
                        <li>
                            <span class="noti_num">10</span>
                            <span class="not_tit"><a href="">?????? ??? ?????? ???????????? ?????? ??????, ????????????!</a></span>
                            <span class="noti_auth">?????????</span><span class="noti_date">2021-07-28</span>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
    </section>
</div>
<div class="content" id="page3">
    <figure class="vs">
        <img src="img/p_brand_1.jpg" alt="?????????">
    </figure>
    <div class="bread">
        <div class="bread_ft">
            <a href="index1.jsp" class="home">HOME</a> &gt;
            <select name="sel5" id="sel5" class="sel">
                <option>??????????????????</option>
                <option value="menu.jsp#page1">??????</option>
                <option value="service.jsp#page1">????????????</option>
                <option value="custom.jsp#page1">????????????</option>
                <option value="map.jsp">????????????</option>
            </select> &gt;
            <select name="sel6" id="sel6" class="sel">
                <option>????????????</option>
                <option value="company.jsp#page1">???????????????</option>
                <option value="company.jsp#page2">????????????</option>
            </select>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">?????? ??????</h2>
            <ul class="lst">
                <div class="form_fr">
                    <form name="frm1" action="" method="post" id="loginForm" class="frm">
                        <table class="frm_tb">
                            <tbody>
                                <tr>
                                    <li class="left">
                                        <iframe name="vdo2" id="vdo2" width="1200" height="690" src="https://www.youtube.com/embed/oX0HBc-pCok" title="MOM???STOUCH ORIGINAL | ????????? ????????? ??? ???????????? ??? ????????? ????????????" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </li>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
                <li class="right">
                    <ul class="ico_lst">
                        <div class="con_wrap">
                            <ul class="pic_lst">
                                <li>
                                    <a href="https://www.youtube.com/embed/oX0HBc-pCok" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1638164852-SNYSQ.png" alt="pic1"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">MOM???STOUCH ORIGINAL | ????????? ????????? ??? ???????????? ??? ????????? ????????????</h3>
                                        <p class="pic_com">2021-12-02</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/b43YTcBvyzY" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1628069915-VEBNG.png" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">???????????? ??????????????????(?????????) TVCF 30s</h3>
                                        <p class="pic_com">2021-08-05</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/DxxgAOtkyDE" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1620894256-YEYTH.jpg" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">???????????? ?????????????????? TVC(30s)_??????</h3>
                                        <p class="pic_com">2021-05-04</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/rZWo-R41pf4" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1620894173-STMKT.jpg" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">???????????? ?????????????????? TVC(15s)_??????</h3>
                                        <p class="pic_com">2021-05-04</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/6VebumErD3c" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1620518974-NPYEJ.png" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">???????????? ?????????????????? TVC (15s)_??????</h3>
                                        <p class="pic_com">2021-05-04</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/PONibbhHzns" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1617010053-KMMLL.png" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">?????????????????? TVC(30s)_B</h3>
                                        <p class="pic_com">2020-12-08</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/7tgh4ipRhWQ" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1617009798-UZNWZ.png" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">2020 ???????????? TVC(16?????? 3?????????)</h3>
                                        <p class="pic_com">2020-12-08</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/pzPPteotgtg" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1617004689-XGRGH.jpg" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">2019 ???????????? ????????????????????? TVCF (30s)</h3>
                                        <p class="pic_com">2019-03-28</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/RtixVPqEvdQ" target="vdo2">
                                        <div class="pic_fr"><img src="./img/1617004374-MNFVK.jpg" alt="pic2"></div>
                                        <div class="pic_hd"></span><span class="starating"></span></div>
                                        <h3 class="pic_tit">2018 ???????????? ????????????????????? TVCF (30s)</h3>
                                        <p class="pic_com">2018-11-13</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </ul>
                </li>
            </ul>
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
<a href="#" class="to_top">???</a>
</body>
</html>