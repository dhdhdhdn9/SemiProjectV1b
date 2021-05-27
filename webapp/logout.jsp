<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- 모든 정보 제거 -->
	<%-- ${sessionScope.invalidate} --%>
	
	<!-- 특정 개체 제거 -->
	<c:set var="userid" value="${sessionScope.remove(userid) }" />
	
	 <!-- 제거 후 index.html로 돌아감 -->
	<script>location.href='/index.jsp'</script>