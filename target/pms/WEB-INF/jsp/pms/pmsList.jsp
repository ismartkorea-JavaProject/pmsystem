<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PMS 리스트 화면</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />
<link href="<c:url value='/'/>bootstrap5/css/bootstrap.css" rel="stylesheet" type="text/css" >
<link href="<c:url value='/'/>css/pms.css" rel="stylesheet" type="text/css" >
<script src="<c:url value='/'/>js/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	
	// 저장버튼 처리.
	$("#newTopBtn").click(function() {
		document.location.href="<c:url value='/pms/savePmsView.do'/>"
	});	
	
	// 저장버튼 처리.
	$("#newBottonBtn").click(function() {
		document.location.href="<c:url value='/pms/savePmsView.do'/>"
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
	<div id="main_container" class="container">
				<div id="buttons" style="text-align:right;">
					<input type="button" class="btn btn-primary btn-sm" id="newTopBtn" name="newTopBtn" value="신규"/>
				</div>	
                <div class="default_tablestyle">
                    <table class="table table-hover">
	                    <thead>
	                    <tr>
	                        <th scope="col">번호</th>
	                        <th scope="col">성명</th>
	                        <th scope="col">영문명</th>
	                        <th scope="col">나이</th>
	                        <th scope="col">휴대폰번호</th>
	                        <th scope="col">이메일</th>
	                    </tr>
	                    </thead>
	                    <tbody>
		                    <c:forEach var="result" items="${resultList}" varStatus="status">
		                    <!-- loop 시작 -->                                
							  <tr>
							    <th scope="row"><c:out value="${result.no}"/></th>		    
							    <td nowrap="nowrap">
									<a href="<c:url value='/pms/selectOnePms.do'/>?no=<c:out value='${result.no}'/>">
										<c:out value="${result.name}"/>
									</a>  
							    </td>
							    <td nowrap="nowrap"><c:out value="${result.eNm}"/></td>
							    <td nowrap="nowrap"><c:out value="${result.age}"/></td>
							    <td nowrap="nowrap"><c:out value="${result.cellNo}"/></td>
							    <td nowrap="nowrap"><c:out value="${result.email}"/></td> 
							  </tr>
			                </c:forEach>	  
							<c:if test="${fn:length(resultList) == 0}">
							  <tr>
							    <td nowrap colspan="6"><spring:message code="common.nodata.msg" /></td>  
							  </tr>		 
							</c:if>	                    
	                    </tbody>
                 	</table> 		
				</div>
				<div id="buttons" style="text-align:right;">
					<input type="button" class="btn btn-primary btn-sm" id="newBottonBtn" name="newBottonBtn" value="신규"/>
				</div>
	</div>
	</article>
	<div class="clear"></div>
 	<footer></footer>
 </div>
</body>
</html>