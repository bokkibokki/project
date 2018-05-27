<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<%
	request.setCharacterEncoding("UTF-8");
%>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/js/httpRequest.js"></script>
<script><!-- ajax 콜 콜백 세트 -->
function loadEval(mc){
	var moviecode=mc;
	var params = "?moviecode=" + encodeURIComponent(moviecode);
	sendRequest("/S2_BOX/evaluation/DivAjax", params, loadedEval, "GET");
}

function loadedEval(){
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				$(document).ready(function(){					
					$("#callevalDraw1").html(httpRequest.responseText);
				});
			} else {
				alert(httpRequest.status);
			}
		}
}
</script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/common/css/S2_BOX_khj.css?ver=1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/common/css/jquery.flipster.min.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/js/jquery2.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/common/js/jquery.flipster.min.js"></script>
<!-- ajax 핵심 js -->

<script>
$(function () {
var flat = $(".evaluation_border_black").flipster({
    style: 'flat',
    spacing: -0.25
	});
});
</script>
<script>
// star rating
var starRating = function(){
  var $star = $(".star-input"),                          //전체를 star에 넣는다
      $result = $star.find("output>b");                  //star에서 b를 찾아 result에 넣음
  $(document).on("focusin", ".star-input>.input",        //현재 문서를 눌렀을 때, input 클래스에 focus 클래스 추가
function(){
    $(this).addClass("focus");
  })
  
.on("focusout", ".star-input>.input", function(){       //바깥을 선택했을 때
    var $this = $(this);                                //input의 값을 this에 넣음
    setTimeout(function(){                              
      if($this.find(":focus").length === 0){            //길이가 0이고, this 값이 focus이면
        $this.removeClass("focus");                     //focus 클래스를 지워라
      }
    }, 100);                                            //0.1초 후에
  })
  
    .on("change", ".star-input :radio", function(){     //radio가 변하면 다음 text를 result에 넣음
    $result.text($(this).next().text());
  })
  
    .on("mouseover", ".star-input label", function(){ //마우스 가져가면 label 텍스트를 result에 넣음
    $result.text($(this).text());
  })
  
    .on("mouseleave", ".star-input>.input", function(){ //마우스 떠나면 input을 가지고 function 실행
    var $checked = $star.find(":checked");              //체크된 star값을 checked에 넣어라
    if($checked.length === 0){                          //chek 된게 없으면 0을 result에 넣고
      $result.text("0");
    } else {                                            //check 된거 다음 텍스트를 result에 넣음
      $result.text($checked.next().text());
    }
  });
};

starRating();
</script>



<script>
	function check() {
		for (var i = 0; i < document.input.elements.length; i++) {
			if (document.input.elements[i].value == "") {
				alert("모든 값을 입력 하셔야 합니다. ");
				return false;
			}
		}
		document.input.submit();
	}
</script>
<script>
	var locked = 0;
	
	function show2(star1, tt) {
			var el;
			var tempimg="";
			
			if (star1 == 0.5) {
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow1.png";
			} else if (star1 == 1){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow2.png";
			} else if (star1 == 1.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow3.png";
			} else if (star1 == 2){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow4.png";
			} else if (star1 == 2.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow5.png";
			} else if (star1 == 3){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow6.png";
			} else if (star1 == 3.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow7.png";
			} else if (star1 == 4){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow8.png";
			} else if (star1 == 4.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow9.png";
			} else {
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow10.png";
			}

				el =document.getElementsByClassName('image11')[tt];			//배열
				el.src = tempimg;										//src
			}
	
	
	function lock(star1) {
		show(star1);
		locked = 1;
	}

	function mark(star1) {
		var gr = document.getElementById("star");
		gr.value = star1;
	}
	
	function show3(star1) {
		var el;
		var tempimg="";

		if (star1 <= 0.5) {
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow1.png";
			} else if (star1 <= 1){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow2.png";
			} else if (star1 <= 1.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow3.png";
			} else if (star1 <= 2){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow4.png";
			} else if (star1 <= 2.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow5.png";
			} else if (star1 <= 3){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow6.png";
			} else if (star1 <= 3.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow7.png";
			} else if (star1 <= 4){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow8.png";
			} else if (star1 <= 4.5){
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow9.png";
			} else {
				tempimg = "<%=request.getContextPath()%>/common/image/evalutaionImage/starrow10.png";
			}
			alert(tempimg);
			var t1 =document.getElementsByClassName('image21')[0];
			var t2 =document.getElementsByClassName('image21')[1];
			t1.src = tempimg;	
			t2.src = tempimg;	
	}
</script>
<script type="text/javascript">
$(document).ready(function(){
  var modalLayer = $("#modalLayer");
  var modalLink = $(".modalLink");
  var modalCont = $(".modalContent");
  var marginLeft = modalCont.outerWidth()/2;
  var marginTop = modalCont.outerHeight()/2; 

  modalLink.click(function(){
    modalLayer.fadeIn("slow");
    modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
    $(this).blur();
    $(".modalContent > a").focus(); 
    return false;
  });

  $(".modalContent > button").click(function(){
    modalLayer.fadeOut("slow");
    modalLink.focus();
  });      
});
</script>
<style type="text/css">
.modalLink{margin:0;}
#modalLayer{display:none; position:relative; color:#000;}
#modalLayer .modalContent{width:auto; height:auto; padding:10px; border:1px solid #ccc; position:relative; left:0; top:50%; z-index:11; background:#fff;}
#modalLayer .modalContent button{position:relative; left:10px; top:-30px; cursor:pointer; width:0px; height:0px; background-color:transparent; border:0;}
.title{
	font-family: '나눔고딕', NanumGothic;
	color:white;
	display:block;	
}
.image21{
width:80%;
}
</style>
</head>
<body bgcolor="#fdfcf0">


	<!-- 영화 리스트 커버플로우 -->
	<div class="body-middle">
		<div class="col_left" style="display: block; margin: 0 auto;">
			<header>
			<div class="evaluation_title">
				<span class="title1">
					<h1
						style="font-family: -윤고딕340; font-size: 250%; margin-top: 50px;">평점</h1>
				</span>
			</div>
			</header>
			<div class="evaluation_border_black"
				style="height: 432px; width: auto; background: #333333;">
				<!-- 커버플로우 소스 시작 unsorted list -->
				<ul class="ul1">
					<li class="on1">
						<div class="box_image">
							<span class="thumb_image"> <img id="merry"
								src="../common/image/evalutaionImage/merry.jpg" style="width: 100%; height: 100%;"
								onclick="loadEval(1111)"> <span class="grade">12</span>
							</span>
						</div>
						<div class="box-contents">
							<strong class="title">메리와 마녀의 꽃</strong> <img class="image21"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/starrow3.png"> <span class="txt-info">
								<strong>2017.11.15<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img id="starwars"
								src="../common/image/evalutaionImage/starwas.jpg" onclick="loadEval(2222)"
								style="width: 100%; height: 100%;"> <span class="grade">12</span>
							</span>

						</div>
						<div class="box-contents">
							<strong class="title">스타워즈</strong> <img class="image21"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.11.15<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img src="../common/image/evalutaionImage/꾼.jpg"
								style="width: 100%; height: 100%;" onclick="loadEval(3333)">
								<span class="grade">12</span>
							</span> </a>
						</div>
						<div class="box-contents">
							<strong class="title">꾼</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.11.22<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img src="../common/image/evalutaionImage/기억의밤.jpg"
								style="width: 100%; height: 100%;" onclick="loadEval(4444)">
								<span class="grade">12</span>
							</span> </a>
						</div>
						<div class="box-contents">
							<strong class="title">기억의 밤</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.11.29<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img
								src="../common/image/evalutaionImage/오리엔트특급살인.jpg" style="width: 100%; height: 100%;"
								onclick="loadEval(5555)"> <span class="grade">12</span>
							</span> </a>
						</div>
						<div class="box-contents">
							<strong class="title">오리엔트특급살인</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.11.29<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img src="../common/image/evalutaionImage/어쌔신.jpg"
								style="width: 100%; height: 100%;" onclick="loadEval(6666)">
								<span class="grade">12</span>
							</span> </a>
						</div>
						<div class="box-contents">
							<strong class="title">어쌔신</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.12.07<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img src="../common/image/evalutaionImage/라라랜드.jpg"
								style="width: 100%; height: 100%;" onclick="loadEval(7777)">
								<span class="grade">12</span>
							</span>

						</div>
						<div class="box-contents">
							<strong class="title">라라랜드</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.12.08<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img src="../common/image/evalutaionImage/러브레터.jpg"
								style="width: 100%; height: 100%;" onclick="loadEval(8888)">
								<span class="grade">12</span>
							</span> </a>
						</div>
						<div class="box-contents">
							<strong class="title">러브레터</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.11.15<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img src="../common/image/evalutaionImage/강철비.jpg"
								style="width: 100%; height: 100%;" onclick="loadEval(9999)">
								<span class="grade">12</span>
							</span> </a>
						</div>
						<div class="box-contents">
							<strong class="title">강철비</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.11.15<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
					<li class="on1">
						<div class="box_image"
							style="position: relative; margin-bottom: 10px; min-height: 260px; border: 6px solid #000000;">
							<span class="thumb-image"> <img src="../common/image/evalutaionImage/이프온리.gif"
								style="width: 100%; height: 100%;" onclick="loadEval(0000)">
								<span class="grade">12</span>
							</span> </a>
						</div>
						<div class="box-contents">
							<strong class="title">이프온리</strong> <img class="star"
								src="<%=request.getContextPath()%>/common/image/evalutaionImage/4_3.png"> <span class="txt-info"> <strong>2017.11.15<span>개봉</span>
							</strong>
							</span> <span class="like">
								<button class="btn-like"></button> <span class="count"><strong
									class="p_num">10,491</strong></span> <image class="reservation"
									src="../common/image/evalutaionImage/reservation_button.png"> </a>
							</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div id="callevalDraw1">
		<form name="input" method="post" action="<%=request.getContextPath()%>/evaluation/Evaluation_Pro">
			<input type="hidden" id="star" name="star"> <input
				type="hidden" id="id" name="id"
				value="<%=session.getAttribute("memId")%>"> <input
				type="hidden" id="moviecode" name="moviecode" value="${moviecode}">
			<div class="container comm_tab1">
				<ul class="tabs tab_menu">
					<li><a href="javascript:;" class="tit_in1">네티즌 평점</a>
						<div class="ntz_help">
							<img src="<%=request.getContextPath()%>/common/image/evalutaionImage/question.png">
						</div>
						<div class="sc_area">
							<img class="image21" src="<%=request.getContextPath()%>/common/image/evalutaionImage/starrow1.png" style="float: left; width: 35%; margin: 0 0 0 0;">
							<script> show3(${avreval})</script>
							<em class="ntz_num">${avreval}</em>
						</div> <span class="sum_id">${people}명</span></li>
					<li><a href="javascript:;" class="tit_in1">관람객 평점</a></li>
				</ul>
				<div class="jq_cont tab_cont">
					<div class="tab_container">
						<div id="tab1" class="container comm_tab2">
							<ul class="tabs tab_menu">
								<li><a href="javascript:;" class="tit_in1">점수 분포</a></li>
								<li><a href="javascript:;" class="tit_in1">남녀별 · 연령별</a></li>
							</ul>
							<div class="jq_cont tab_cont">
								<!-- //탭1-1 -->
								<div class="tab_container">
									<strong>1. 확증편향 (confirmation bias)</strong><br> <br>
									<p>
										자신의 신념과 일치하는 정보들은 쉽게 믿고 받아들이고, 신념과 일치하지 않는 정보는 무시하거나 덜 찾는 경향<br>
										<br> 예: 소심한 사람에게 혈액형을 물어 A형이 아니라고 하면 금방 잊어버리고,<br>
										A형이 맞다고 하면 호들갑을 떨며 "맞지? A형일것 같았어."라고 말하는 것.
									</p>
								</div>
								<!-- 탭1-1// -->
								<!-- //탭1-2 -->
								<div class="tab_container">
									<strong>2. 바넘효과 (Barnum effect)</strong><br> <br>
									대부분의 사람들이 보편적으로 가지고 있는 성격이나 심리적 특징을<br> 자신만의 고유한 특성으로 여기는
									경향.<br> <br> 예: "당신은 대체로 싸움을 싫어하지만 때로는 강하게 나갈 때도
									있다.", "당신은 기본적으로 외향적인 성격이지만 때때로 소심하거나 내향적인 모습을 보이기도 한다"와 같은 당연한
									소리를 자신의 성격이라고 믿는 것.
								</div>
								<!-- 탭1-2// -->
							</div>
						</div>
					</div>

					<!-- 탭1// -->
					<!-- 탭2// -->

					<div class="tab_container">
						<div id="tab1" class="container comm_tab2">
							<ul class="tabs tab_menu">
								<li><a href="javascript:;" class="tit_in1">점수 분포</a></li>
								<li><a href="javascript:;" class="tit_in1">남녀별·연령별</a></li>
							</ul>
							<div class="jq_cont tab_cont">
								<!-- //탭1-1 -->
								<div class="tab_container">
									<strong>1. 확증편향 (confirmation bias)</strong><br> <br>
									<p>
										자신의 신념과 일치하는 정보들은 쉽게 믿고 받아들이고, 신념과 일치하지 않는 정보는 무시하거나 덜 찾는 경향<br>
										<br> 예: 소심한 사람에게 혈액형을 물어 A형이 아니라고 하면 금방 잊어버리고,<br>
										A형이 맞다고 하면 호들갑을 떨며 "맞지? A형일것 같았어."라고 말하는 것.
									</p>
								</div>
								<!-- 탭1-1// -->
								<!-- //탭1-2 -->
								<div class="tab_container">
									<strong>2. 바넘효과 (Barnum effect)</strong><br> <br>
									대부분의 사람들이 보편적으로 가지고 있는 성격이나 심리적 특징을<br> 자신만의 고유한 특성으로 여기는
									경향.<br> <br> 예: "당신은 대체로 싸움을 싫어하지만 때로는 강하게 나갈 때도
									있다.", "당신은 기본적으로 외향적인 성격이지만 때때로 소심하거나 내향적인 모습을 보이기도 한다"와 같은 당연한
									소리를 자신의 성격이라고 믿는 것.
									<dl class="movie_grp_info">
										<dt>한줄분석</dt>
										<dd>
											이 영화를 가장 좋아하는 그룹은 <span class="info_tx1">20대 남자</span>입니다.
										</dd>
									</dl>
								</div>
								<!-- 탭1-2// -->
							</div>
						</div>
					</div>


				</div>
			</div>

			<div class="table1">
				<ul
					style="font-size: 0; width: auto; display: block; list-style: none; text-align: center;">
					<li id="first_star">
						<div class="first_star_star">
							<!-- 입력받는 별 -->
							<!-- <span><img id="image1" onmouseover="show(1)" onclick="mark(1)" src="<%=request.getContextPath()%>/common/image/evalutaionImage/stargray.png"></span>
						<span><img id="image2" onmouseover="show(2)" onclick="mark(2)" src="<%=request.getContextPath()%>/common/image/evalutaionImage/stargray.png"></span>
						<span><img id="image3" onmouseover="show(3)" onclick="mark(3)" src="<%=request.getContextPath()%>/common/image/evalutaionImage/stargray.png"></span>
						<span><img id="image4" onmouseover="show(4)" onclick="mark(4)" src="<%=request.getContextPath()%>/common/image/evalutaionImage/stargray.png"></span>
						<span><img id="image5" onmouseover="show(5)" onclick="mark(5)" src="<%=request.getContextPath()%>/common/image/evalutaionImage/stargray.png"></span> -->
							<span class="star-input"> <span class="input"> <input
									type="radio" name="star-input" id="p1" value="1"
									onclick="mark(0.5)"><label for="p1">0.5</label> <input
									type="radio" name="star-input" id="p2" value="2"
									onclick="mark(1)"><label for="p2">1</label> <input
									type="radio" name="star-input" id="p3" value="3"
									onclick="mark(1.5)"><label for="p3">1.5</label> <input
									type="radio" name="star-input" id="p4" value="4"
									onclick="mark(2)"><label for="p4">2</label> <input
									type="radio" name="star-input" id="p5" value="5"
									onclick="mark(2.5)"><label for="p5">2.5</label> <input
									type="radio" name="star-input" id="p6" value="6"
									onclick="mark(3)"><label for="p6">3</label> <input
									type="radio" name="star-input" id="p7" value="7"
									onclick="mark(3.5)"><label for="p7">3.5</label> <input
									type="radio" name="star-input" id="p8" value="8"
									onclick="mark(4)"><label for="p8">4</label> <input
									type="radio" name="star-input" id="p9" value="9"
									onclick="mark(4.5)"><label for="p9">4.5</label> <input
									type="radio" name="star-input" id="p10" value="10"
									onclick="mark(5)"><label for="p10">5</label>
							</span> <output for="star-input"> <b>0</b>점</output>
							</span>
						</div>
					</li>
					<li id="second_star"><textarea name="content" rows="1"
							cols="1"
							style="padding: 20px 30px 15px 12px; font-size: 14px; margin: 0; text-align: justify; width: 100%; height: 100%; border: 0; background: #fcfcfc;"
							placeholder="최대 한글 140까지 가능하며, 스포일러는 삭제될 수 있습니다."></textarea></li>
					<li id="third_star" colspan="2" align="center"><input
						class="btn" type="submit" value="완료"> <input class="btn"
						type="reset" value="다시입력"></li>
				</ul>
			</div>
			<br> <br>




			<div class="score_total">
				<strong class="total"> <span class="tit">140자 평</span><span
					class="sp">|</span><em>총 6,721건</em></strong>
			</div>

			<div id="orderCheckbox" class="top_behavior"
				style="width: 980px; height: auto; margin: 0 auto;">
				<ul class="sorting_list"
					style="display: inline-block; overflow: hidden; width: 980px; border: 1px solid; border-color: #b7b7b7 transparent #dbdbdb; padding: 10px 0 11px;">
					<li style="float: left;"><a
						href="<%=request.getContextPath()%>/evaluation/SortingEval_Favor/moviecode=${article.moviecode}"
						style="margin-right: 16px; color: #666; text-decoration: none; font-family: '나눔고딕', NanumGothic;">호감순</a></li>
					<li style="float: left;"><a
						href="<%=request.getContextPath()%>/evaluation/Evaluation_form/moviecode=${article.moviecode}"
						style="margin-right: 16px; color: #666; text-decoration: none; font-family: '나눔고딕', NanumGothic;">최신순</a></li>
					<li style="float: left;"><a
						href="<%=request.getContextPath()%>/evaluation/SortingEval_BestStar/moviecode=${article.moviecode}"
						style="margin-right: 16px; color: #666; text-decoration: none; font-family: '나눔고딕', NanumGothic;">평점
							높은 순</a></li>
					<li style="float: left;"><a
						href="<%=request.getContextPath()%>/evaluation/SortingEval_WorstStar/moviecode=${article.moviecode}"
						style="margin-right: 16px; color: #666; text-decoration: none; font-family: '나눔고딕', NanumGothic;">평점
							낮은 순</a></li>
				</ul>
				<ul class="quarter_mode"
					style="float: none; position: absolute; z-index: 20; list-style: none; margin-left: 800px; margin-top: -50px; padding: 0; font-family: '나눔고딕', NanumGothic; display: inline-block;">
					<li><input type="checkbox" name="viewer"> <label
						class="label_viewer">관람객 평점만 보기</label> <!-- <a href="#" id="actualPointHelpButton" class="help _actualPointHelp"></a> -->
						<a href="#modalLayer" class="modalLink"><img src="<%=request.getContextPath()%>/common/image/evalutaionImage/question.png"></a>
							<div id="modalLayer">
								<div class="modalContent">
									S2BOX 영화에서 예매하신 고객님들이<br>영화 관람 후 등록해주신 평점입니다.
									<button type="button">X</button>
								</div>
							</div>
						<!-- <a href="#modalLayer" class="modalLink">ff</a>
						<div id="modalLayer">
							<div class="modalContent">
								<p>
									S2BOX 영화에서 예매하신 고객님들이<br>영화 관람 후 등록해주신 평점입니다.
								</p>
								<button type="button" id="actualPointHelpCloseButton"
									class="btn_close_actualPointHelp" title="닫기"></button>
							</div>
						</div> -->
						</li>
				</ul>
			</div>

			<div class="tab_container2">
				<div class="table2">
					<ul class="table_in">
						<c:forEach var="article" items="${articleList}" varStatus="status">
							<li class="addbox">
								<!-- 입력받은 별 -->

								<div class="score">
									<span><img class="image11" src="<%=request.getContextPath()%>/common/image/evalutaionImage/starrow3.png"></span>
									<script> show2(${article.star}, ${status.index});</script>
									<span class="grade_de">${article.star}</span>
								</div>
								<div class="score_reple">
									<span class="grade_de2">${article.content} </span> <span
										class="grade_de1">${article.id} | ${article.reg_date}</span>
								</div>
								<div class="btn_area">
									<a class="btn1"
										href="<%=request.getContextPath()%>/evaluation/LikeUp?eval_id=${article.eval_id}">
										<img src="../common/image/evalutaionImage/like1.png" />
									</a> <span class="countone">${article.likeup}</span> <a
										class="btn2"
										href="<%=request.getContextPath()%>/evaluation/LikeDown?eval_id=${article.eval_id}">
										<img src="../common/image/evalutaionImage/like2.png" />
									</a> <span class="count2">${article.likedown}</span>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</form>
	</div>


	<script>
$(document).ready (function () {
	//탭(ul) onoff
	$('.container>.jq_cont').children().css('display', 'none');
	$('.container>.jq_cont div:first-child').css('display', 'block');
	$('.container>.tabs li:first-child').addClass('on');
	$('.container').delegate('.tabs>li', 'click', function() {
		var index = $(this).parent().children().index(this);
		$(this).siblings().removeClass();
		$(this).addClass('on');
		$(this).parent().next('.jq_cont').children().hide().eq(index).show();
	});
});
</script>
</body>
</html>