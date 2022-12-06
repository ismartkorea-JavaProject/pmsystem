<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PMS 상세정보 화면</title>
<link href="<c:url value='/'/>bootstrap5/css/bootstrap.css" rel="stylesheet" type="text/css" >
<link href="<c:url value='/'/>css/pms.css" rel="stylesheet" type="text/css" >
<script src="<c:url value='/'/>js/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	// 저장버튼 처리.
	$("#cancelBtn").click(function() {
		document.location.href="<c:url value='/pms/selectListPms.do'/>";
	});
	
	$("#saveBtn").click(function(e) {
		e.preventDefault();
		
        $("#frm").attr("action","/pms/savePms.do");
        $("#frm").submit();
	});	
	
});

</script>
</head>
<body>
 <div id="wrap">
 	<header></header>
 	<nav></nav>
 	<article> 
    <!-- container 시작 -->
    <div id="container" class="container">
    	<div class="row">
   			<div id="content">
			<form:form modelAttribute="pms" id="frm" name="frm" method="post" action="/pms/savePms.do">
			    <input type="hidden" name="no"  value="<c:out value='${result.no}'/>"/>
				<table class="table table-bordered">
					<tr>
						<th scope="row" width="30%">이름</td><td><input type="text" id="name" name="name" value="<c:out value='${result.name}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">영문명</th><td><input type="text" id="eNm" name="eNm" value="<c:out value='${result.eNm}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">별명</th><td><input type="text" id="nickNm" name="nickNm" value="<c:out value='${result.nickNm}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">나이</th><td><input type="text" id="age" name="age" value="<c:out value='${result.age}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">성별</th><td><input type="text" id="sex" name="sex" value="<c:out value='${result.sex}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">주소1</th><td><input type="text" id="address1" name="address1" value="<c:out value='${result.address1}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">주소2</th><td><input type="text" id="address2" name="address2" value="<c:out value='${result.address2}'/>"/></td>
					</tr>					
					<tr>
						<th scope="row">우편번호</th><td><input type="text" id="postNo" name="postNo" value="<c:out value='${result.postNo}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">직업</th><td><input type="text" id="job" name="job" value="<c:out value='${result.job}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">SNS1</th><td><input type="text" id="sns1" name="sns1" value="<c:out value='${result.sns1}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">SNS2</th><td><input type="text" id="sns2" name="sns2" value="<c:out value='${result.sns2}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">SNS3</th><td><input type="text" id="sns3" name="sns3" value="<c:out value='${result.sns3}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">전화번호</th><td><input type="text" id="telNo" name="telNo" value="<c:out value='${result.telNo}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">휴대폰번호</th><td><input type="text" id="cellNo" name="cellNo" value="<c:out value='${result.cellNo}'/>"/></td>
					</tr>
                    <tr>
						<th scope="row">이메일</th><td><input type="text" id="email" name="email" value="<c:out value='${result.email}'/>"/></td>
					</tr>					
					<tr>
						<th scope="row">메모1</th><td><input type="text" id="memo1" name="memo1" value="<c:out value='${result.memo1}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">메모2</th><td><input type="text" id="memo2" name="memo2" value="<c:out value='${result.memo2}'/>"/></td>
					</tr>
					<tr>
						<th scope="row">메모3</th><td><input type="text" id="memo3" name="memo3" value="<c:out value='${result.memo3}'/>"/></td>
					</tr>																																										
				</table>    
			 </form:form>
			</div>
			<div id="buttons" style="text-align:right;">
				<input type="button" class="btn btn-primary btn-sm" id="cancelBtn" name="cancelBtn" value="취소"/>
				<input type="button" class="btn btn-primary btn-sm" id="saveBtn" name="saveBtn" value="저장"/>
			</div>
		</div>					      
    </div>
	</article>
	<div class="clear"></div>
 	<footer></footer>    	
 </div>
</body>
</html>