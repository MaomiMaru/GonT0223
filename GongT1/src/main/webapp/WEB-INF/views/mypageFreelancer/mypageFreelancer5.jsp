<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../inc/top.jsp" />
<head>
<meta charset="UTF-8">

<title>마이페이지 - 프리랜서</title>

<script>

	function popUp(num){
		// open("경로", "이름", "옵션")

		window.open("${pageContext.request.contextPath}/inc/chatting?c_num="+num, "", "width=800px, height=700, left=600px, top=150px");

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
    
         <button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageFreelancer/mypageFreelancer1'"><span >회원정보 수정</span></button>
        <button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageFreelancer/mypageFreelancer2'"><span>나의 이력서</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/resume/resumeWrite'"><span>이력서 등록</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageFreelancer/mypageFreelancer4'"><span>관심 프로젝트(찜)</span></button>
    	<button type="button" class="button button-update" style="background-color: #1842B6;"><span style="color: white;">쪽지 내역</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageFreelancer/mypageFreelancer6'"><span>회원탈퇴</span></button>
    
    </div>
</div>
    <div class="modal modal-spinner" role="dialog" aria-hidden="true" style="display:none;"></div>
    <div class="resume-view-page">
        <div class="resumeHeader">
            
        </div>
        <div class="resume-view-wrapper" >
        <br><br>
            <div class="resume-view-container" style="height: 700px !important">
                <div class="resume-subject" style="text-align: center !important;">마이 페이지(프리랜서)</div>


<div class="summary col-4"></div>
<div class="list list-education"></div>

<fieldset style="text-align: center; font-size: 20px; width: 100%; height: 80%;" >


<table>
<!-- <<<<<<< HEAD -->
<!--   <tr style="background-color: transparent !important;"> -->
<!--     <th style=" font-size:25px !important; color: black;">보낸사람</th> -->

<!--     <th style=" font-size:25px !important; color: black;">내용</th> -->
<!--     <th style=" font-size:25px !important; color: black;">시간</th> -->
<!--     <th style=" font-size:25px !important; color: black;">매칭 여부</th> -->
<!--   </tr> -->
<%--   <c:forEach var="ChattingDTO" items="${ChattingDTOListF}"> --%>
<!--  <tr> -->
<%--     <th>${ChattingDTO.cid}</th> --%>
<%--     <th>${ChattingDTO.c_content}</th> --%>
<%--     <th>${ChattingDTO.c_time}</th> --%>
<!-- ======= -->
	<tr style="background-color: transparent !important;">
    	<th style=" font-size:25px !important; color: black;">보낸사람</th>
    	<th style=" font-size:25px !important; color: black;">내용</th>
    	<th style=" font-size:25px !important; color: black;">시간</th>
    	<th style=" font-size:25px !important; color: black;">매칭 여부</th>
	</tr>
	<c:forEach var="chattingDTO" items="${ChattingDTOListF}">
	<tr>
    	<th>${chattingDTO.cid}</th>
    	<th>${chattingDTO.c_content}</th>
    	<th>${chattingDTO.c_time}</th>


<!-- <<<<<<< HEAD -->
<%-- <c:if test="${ChattingDTO.c_matching eq 0}"> --%>
<!-- <th>미 매칭</th> -->
<%-- </c:if> --%>
<%-- <c:if test="${ChattingDTO.c_matching eq 1}"> --%>
<!-- <th>매칭 완료</th> -->
<%-- </c:if> --%>
 
<!--   <th><button onclick="popUp();">전체 쪽지</button></th> -->
<!--    </tr> -->
<!-- ======= -->
		<c:if test="${chattingDTO.c_matching eq 0}">
		<th>미 매칭</th>
		</c:if>
		<c:if test="${chattingDTO.c_matching eq 1}">
		<th>매칭 완료</th>
		</c:if>
 
		<th><button onclick="popUp(${chattingDTO.c_num});">전체 쪽지</button></th>
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