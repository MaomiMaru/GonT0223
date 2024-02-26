<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<title>notice</title>
<link href="//i.jobkorea.kr/content/css/ver_2/text_user/resume/view.css?v=202402061400" rel="stylesheet" type="text/css" />



<style>
#border{
	height: 1000px;
}

#up {
	margin-top : 75px;
	text-align: center;
	width: 100%;
/* 	background-color: lightgray; */
	height: 100px;
	line-height: 100px;
}

#left {
	height: 300px;
	width: 15%;
/* 	border-style : groove; */
	float: left;
/* 	border-radius: 20px; */
	text-align: center;
	margin-left: 10%;
}

#right {
 	height: 50%; 
	width: 60%;
	float: left;
	text-align: center;
	margin-right: 10%;
}


table {
	width: 100%;
/* 	height: 200px; */
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid black;
	text-align: center;
	padding: 4px;
	height: 1px;
}

input {
	width: 473px;
	margin-bottom: 10px;
	

}
a {
  text-decoration-line: none;
}

button{
padding:0; margin:0; font-size:12.5px; letter-spacing: 0px; border:0 none;
vertical-align:middle; overflow:visible; background:transparent; cursor:pointer;
}

.sidemenu {
	width: 15%;
	position: relative;
	top : 5%;
	left : 8%;
}

</style>
</head>

<body>
<jsp:include page="../inc//top.jsp" />
<div id="border">
<div id="up">
	<h1>커뮤니티</h1>
</div>

<div id="left">		
<div class="sidemenu">
        <button type="button" class="button button-update" ><span onclick="location.href='${pageContext.request.contextPath}/Admin/notice'" >공지사항</span></button>
      	<button type="button" class="button button-update" ><span onclick="location.href='${pageContext.request.contextPath}/Admin/FAQ'" >자주 묻는 질문</span></button>
        <button type="button" class="button button-update" style="background-color: #1842B6;"><span onclick="location.href='${pageContext.request.contextPath}/Admin/inquiry'" style="color: white !important;">1:1문의</span></button>
</div>
</div>

<div id="right">
<form action="" id="join">
<fieldset>
<h2>문의 하기</h2>

<div>
<input type="text" name="ir_title" placeholder="제목을 입력하세요.">
</div> 


 <div> 
 <textarea name="ir_content" rows="20" cols="50" placeholder="내용을 입력하세요."></textarea> 
 </div> 
 <input type="button" value="제출"  onclick="location.href='/Admin/inquiry'">

</fieldset>	
</form>				
<div class="clear"></div>
</div>
</div>
<jsp:include page="../inc//bottom.jsp" />
</body>
</html>