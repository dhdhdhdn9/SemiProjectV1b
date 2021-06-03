<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- session.userid == null / session.userid == '' 
		=> empty session.userid로 작성 가능 -->
<c:if test="${empty sessionScope.userid}">
	<script>alert('로그인이 필요합니다!')
		location.href='login.jsp'</script></c:if>
		
<fmt:setBundle basename="soonj.jdbc"/>
<fmt:message key="url" var="url"/>
<fmt:message key="drv" var="drv"/>
<fmt:message key="usr" var="usr"/>
<fmt:message key="pwd" var="pwd"/>

<sql:setDataSource url="${url}" driver="${drv}" user="${usr}" password="${pwd}"
	var="mariadb"/>

<!-- var는 저장할 변수명.
	물음표에 해당하는, 즉 우리가 찾으려는 값만 param으로 적는다. -->
<sql:query var="rs" dataSource="${mariadb}">
	select name, email, joindate from member
		where userid = ?
	<sql:param value="${sessionScope.userid}"/></sql:query>

<!-- 변수명(var)으로 지정된 row는 말 그대로 '열'이다.
	mariadb에 저장된 데이터 중 열에 해당하는 값을 고른다는 의미로 설정했다. -->
<c:forEach var="row" items="${rs.rows}">
	<c:set var="name" value="${row.name}"/>
	<c:set var="email" value="${row.email}"/>
	<c:set var="joindate" value="${row.joindate}"/></c:forEach>

    
<!doctype html>
<html lang = "ko">
    <head>
        <meta charset="UTF-8">
        <title>세미 프로젝트 V1-index</title>
        <link rel="stylesheet" href="/css/base.css">
    </head>

    <body>
        <div id = "wrap">
	        <%@ include file="/layout/header.jsp" %>
	        
	        <div id = "container">
	        
	        	<h1>회원정보</h1>
	
	            <div id="myinfo">
	                <div><span class="label">아이디</span>
	                     <span>${sessionScope.userid}</span>
	                </div>
	
	                <div><span class="label">이름</span>
	                     <span>${name}</span>
	                </div>
	
	                <div><span class="label">이메일</span>
	                     <span>${name}</span>
	                </div>
	
	                <div><span class="label">가입일</span>
	                     <span><fmt:formatDate value="${joindate}" 
	                     		type="date"></fmt:formatDate></span>
	                </div>
	            </div>
	            
	            <%@ include file="/layout/footer.jsp" %>
            
            </div>
        </div>
        
        
        
    </body>
</html>