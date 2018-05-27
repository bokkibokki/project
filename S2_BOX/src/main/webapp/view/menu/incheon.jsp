<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/common/css/EveryP.css?ver=1">
<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
<style>
.all {
   height: 1100px;
   width: 100%;
   position: relative; 
   margin-top: 4%;
}

.Big1 {
   border: 1px solid #ccc;
   height: 400px;
   width: 80%;
   margin-right: 10%;
   margin-left: 10%;
}

.big {
   position:relative;
   width:auto;
   height:100%;
   padding:0;
   background: url(../common/image/mypage_Image/ubuntu_color.png);
   background-size: 100% 100%;
}

a {
   text-decoration: none
}

td {
   height: 30px;
   vertical-align: center;
}

.Big2 {
   border: 1px solid #ccc;
   height: 600px;
   width: 80%;
   margin-left: 10%;
   margin-right: 10%;
   margin-top: 2%;
}

.Big2_1 {
   width: 100%;
   height: 40px;
}

.Big2_2{
background: url(../common/image/image3/S2인천.jpg);
background-size: 100% 100%;
height:470px;
}

.Small1 {
   position:relative;
   width: auto;
   margin-right: 5%;
   margin-left: 5%;
   height: 80px;
   display:block;
}

.top_menu1 {
   float: left;
   width: 21%;
   height: auto;
   padding-top:5px;
}

.top_menu2_theater {
   border: 2px solid white;
   width: 220px;
   height: 60px;
   float: left;
   margin-left: 1%;
}

.top_menu2 {
   width: 59%; 
   padding-top:30px;
   float:left;
}

.top_menu3 {
   float: left;
   width: 20%;
   padding-top:40px;
}

.top_menu3 input{
   height:25px;
}

.top_menu3 button{
   height:30px; 
   width:50px;
   font-weight:bold;
   background-color:white;
   color:black;
}

.background {
   width: 80%;
   height: 200px;
   background-color: #000000;
   opacity: 0.7;
   position: absolute;
   margin-top: 270px;
}

.colum3 {
   width: 80%;
   height: 50px;
   line-height: 35px;
   margin-left: 10%;
   margin-right: 10%;
   text-align: center;
}

.join_btn {
   border: 0;
   cursor: pointer;
   background-color: #7a7a7a;
   color: white;
   margin-top: 5px;
   padding: 2px 8px 3px 8px;
}


.seaTabs{
   /* box-sizing: border-box; */
   width:90%;
   margin-left:5%;
   margin-right:5%;
   margin-top: 50px;
   float:center;
}

.seaTabs_switch {
   overflow: hidden;
}

.seaTabs_tab {
   float: left;
   cursor: pointer;
   padding: 10px 20px;
   background: #fff;
   
}

.seaTabs_tab:first-child {
   /* border-left: 1px solid #000000; */
   border-top-left-radius: 5px;
}

.seaTabs_tab:last-child {
   border-top-right-radius: 5px;
}

.seaTabs_switch {
height:40px;
}

.seaTabs_switch_active {
   cursor: default;
   /* border-bottom: 1px solid #fff; */
   background: white;
   font-weight:bold;
   color:black;
}

.seaTabs_item {
   display: none;
   padding: 20px;
   border-radius: 0 0 5px 5px;
}

.seaTabs_item table{
margin-left:30px;
}

.seaTabs_content {
   background-color:white; 
   font-weight:bold;
}

.seaTabs_content_active {
   display: block;
}

/* table, th, td {
   border: 0;
   border-collapse: collapse;
   text-align: left;
} */

.go_h3 {
   color: white;
   font-size: 200%;
}

.theater_name{
color:#666666;
}
</style>
</head>
<body>
<div class="all">

<div class="Big1">
         <div class="big">
            <div class="Small1">
               <div class="top_menu1">
                  <h3 class="go_h3">자주가는 S2BOX</h3>
               </div>

               <!-- 자주가는 극장 선택하는 네모박스 -->
               <div class="top_menu2">
                  <div class="top_menu2_theater">1</div>

                  <div class="top_menu2_theater">2</div>

                  <div class="top_menu2_theater">3</div>
               </div>


               <!-- 검색부분 -->
               <div class="top_menu3">
                  <input type="text" title="통합검색" id="header_keyword"
                     name="header_keyword" size="20" maxlength="15">
                  <button type="button" class="join_btn" id="btn_header_search"
                     style="text-align:center; ">검색</button>

               </div>
            </div>

<!-- 탭부분 -->
<div class="seaTabs" style="margin-top:50px;">
		<div class="seaTabs_switch">
			<div class="seaTabs_tab seaTabs_switch_active">서울</div>
			<div class="seaTabs_tab">경기</div>
			<div class="seaTabs_tab">인천</div>		
			<div class="seaTabs_tab">강원</div>
			<div class="seaTabs_tab">대전/충청</div>
			<div class="seaTabs_tab">대구</div>
			<div class="seaTabs_tab">부산/울산</div>
			<div class="seaTabs_tab">경상</div>
			<div class="seaTabs_tab">전북/전남</div>
			<div class="seaTabs_tab">광주/전라/제주</div>
			
			
		</div>
		<div class="seaTabs_content">
			<div class="seaTabs_item seaTabs_content_active">
			<table style="width:100%">
			<tr>
   
    <td style="width: 260px"><a class="theater_name" href="<%=request.getContextPath()%>/event/gotheater">S2Box 강남</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/gangdong">S2Box 강동</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/gangbyn">S2Box 강변</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/guro">S2Box 구로</a></td>
  </tr>
  <tr>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/mungdong">S2Box 명동</a></td>  
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/mokdong">S2Box 목동</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/mia">S2Box 미아</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/bulgang">S2Box 불광</a></td>
   
  </tr>
  <tr>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/sangam">S2Box 상암</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/sincheon">S2Box 신촌아트레온</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/apgujeong">S2Box 압구정</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/Yeouido">S2Box 여의도</a></td>
  </tr>
  <tr>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/yongdengpo">S2Box 영등포</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/wangsipri">S2Box 왕십리</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/yongsan">S2Box 용산아이파크홀</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/chengdam">S2Box 청담씨네시티</a></td>
   
  <tr>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/chenho">S2Box 천호</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/hongdae">S2Box 홍대</a></td>
  </tr>
  
			</table>
			</div>
			
			<div class="seaTabs_item">
		<table style="width:100%">
			<tr> 
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/gimpo">S2Box 김포</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/dongsuwon">S2Box 동수원</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/buksuwon">S2Box 북수원</a></td> 
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/suwon">S2Box 수원</a></td>
  </tr>
 
  <tr>   
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/siheng">S2Box 시흥</a></td>
     <td><a class="theater_name" href="<%=request.getContextPath()%>/event/ansan">S2Box 안산</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/uijeongbu">S2Box 의정부</a></td>
     <td><a class="theater_name" href="<%=request.getContextPath()%>/event/ilsan">S2Box 일산</a></td>
  </tr>

 
  <tr>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/pangu">S2Box 판교</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/pyngtac">S2Box 평택</a></td>
   
  </tr>
  </table>
			</div>
			
			<div class="seaTabs_item">
			<table style="width:100%">
			<tr>
    
   
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/bupyong">S2Box 부평</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/incheon">S2Box 인천</a></td>
   <td><a class="theater_name" href="<%=request.getContextPath()%>/event/juan">S2Box 주안역</a></td>
  </tr>
  
  </table>
		</div>
			<div class="seaTabs_item">
			<table style="width:100%">
		
  <tr>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/gangreng">S2Box 강릉</a></td>
  </tr>
 
  </table>
			</div>
		<div class="seaTabs_item">
			<table style="width:100%">
			<tr>
   <td><a class="theater_name" href="<%=request.getContextPath()%>/event/chenan">S2Box 천안</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/chenanpenta">S2Box 천안펜타포트</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/chengju">S2Box 충주</a></td>
  </tr>
  </table>			
			</div>
			
			<div class="seaTabs_item">
			<table style="width:100%">
			<tr>
   <td><a class="theater_name" href="<%=request.getContextPath()%>/event/daegu">S2Box 대구</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/daeguhyundae">S2Box 대구현대</a></td>
  </tr>
  </table>			
			</div>
			
			<div class="seaTabs_item">
			<table style="width:100%">
			<tr>
   <td><a class="theater_name" href="<%=request.getContextPath()%>/event/nampo">S2Box 남포</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/sumeon">S2Box 서면</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/haundae">S2Box 해운대</a></td>
  </tr>
  </table>			
			</div>
			
			<div class="seaTabs_item">
			<table style="width:100%">
			<tr>
   <td><a class="theater_name" href="<%=request.getContextPath()%>/event/changwon">S2Box 창원</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/pohang">S2Box 포항</a></td>
    
  </tr>
  </table>			
			</div>
			
			<div class="seaTabs_item">
			<table style="width:100%">
			<tr>
   <td><a class="theater_name" href="<%=request.getContextPath()%>/event/suncheon">S2Box 순천</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/junju">S2Box 전주</a></td>
   
  </tr>
  </table>			
			</div>
			
			<div class="seaTabs_item">
			<table style="width:100%">
			<tr>
   <td><a class="theater_name" href="<%=request.getContextPath()%>/event/terminal">S2Box 광주터미널</a></td>
    <td><a class="theater_name" href="<%=request.getContextPath()%>/event/jeju">S2Box 제주</a></td>
   
  </tr>
  </table>			
			</div>
			
			</div>		
		</div> 
	</div>

	
</div>


<div class="Big2">

<div class="colum3">
<h2>Theater</h2>
</div>
<div class="Big2_1">
<h3>S2BOX 인천</h3>
</div>

<!-- 극장사진부분 -->
 <div class="Big2_2">
<%-- <img src="<%=request.getContextPath()%>/common/image/image3/S2강남.jpg"  width="100%" height="460" > --%>
</div>
</div>

</div>





<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script>
	$(function(){
		$('.seaTabs_tab').each(function(item){
			$(this).click(function(){
				$(this).addClass('seaTabs_switch_active').siblings().removeClass('seaTabs_switch_active');
				$($('.seaTabs_item')[item]).addClass('seaTabs_content_active').siblings().removeClass('seaTabs_content_active');
			});
		});
	});
	
	</script>
</body>
</html>