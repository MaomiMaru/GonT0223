<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../inc/top.jsp" />
<head>
<meta charset="UTF-8">
<title>공T 마이페이지</title>
<script type="text/javascript">

	function popUp(){
		// open("경로", "이름", "옵션")
		window.open("${pageContext.request.contextPath}/inc/chatting", "", "width=500px, height=400, left=800px, top=200px");
	}
	
</script>

<link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202401301659.css" rel="stylesheet" type="text/css" />
<link href="//i.jobkorea.kr/content/css/ver_2/text_user/resume/view.css?v=202402061400" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: coral;}
</style>
</head>
<body>


<div id="border">
	</div>
	<div class="sidemenu-wrap" style="margin-left:-1660px; margin-top: 195px;">
    <div class="sidemenu">
    
        <button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany1'"><span>회원정보 수정</span></button>
        <button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany2'"><span>나의 프로젝트</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany3'"><span>프로젝트 등록</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany4'"><span>관심 프리랜서(찜)</span></button>
    	<button type="button" class="button button-update" style="background-color: #1842B6;"><span style="color: white;">1:1채팅 내역</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany6'"><span>회원탈퇴</span></button>
   
    </div>
</div>
    <div class="modal modal-spinner" role="dialog" aria-hidden="true" style="display:none;"></div>
    <div class="resume-view-page">
        <div class="resumeHeader">
            
        </div>
        <div class="resume-view-wrapper" >
        <br>
            <div class="resume-view-container" style="height: 700px !important">
                <div class="resume-subject" style="text-align: center !important;">마이 페이지(기업)</div>


<div class="summary col-4"></div>
<div class="list list-education"></div>

<fieldset style="text-align: center; font-size: 20px; width: 100%; height: 80%;" >

	

<table>
  <tr style="background-color: transparent !important;">
    <th style=" font-size:25px !important; color: black;">보낸사람</th>
    <th style=" font-size:25px !important; color: black;">내용</th>
    <th style=" font-size:25px !important; color: black;">시간</th>
    <th style=" font-size:25px !important; color: black;">매칭 여부</th>
  </tr>
 <c:forEach var="ChattingDTO" items="${ChattingDTOList2}">
 <tr>
    <th>${ChattingDTO.sid}</th>
    <th>${ChattingDTO.c_content}</th>
    <th>${ChattingDTO.c_time}</th>

<c:if test="${ChattingDTO.c_matching eq 0}">
<th>미 매칭</th><br><br>
</c:if>
<c:if test="${ChattingDTO.c_matching eq 1}">
<th>매칭 완료</th><br><br>
</c:if>
<th><button onclick="popUp();">전체 쪽지</button></th>

  </tr>
  	</c:forEach>
</table>


</fieldset>

        


 			</div>
        </div>
    </div>
 
<jsp:include page="../inc/bottom.jsp" />
</body>
</html>