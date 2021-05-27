<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- session.userid == null / session.userid == '' 
		=> empty session.userid로 작성 가능 -->
<c:if test="${empty sessionScope.userid}">
	<script>alert('로그인이 필요합니다!')
		location.href='/login.jsp'</script></c:if>

<fmt:setBundle basename="soonj.jdbc"/>
<fmt:message key="url" var="url"/>
<fmt:message key="drv" var="drv"/>
<fmt:message key="usr" var="usr"/>
<fmt:message key="pwd" var="pwd"/>
<fmt:requestEncoding value="UTF-8"/>

<sql:setDataSource url="${url}" driver="${drv}" user="${usr}" password="${pwd}"
	var="mariadb"/>
	
<%-- <sql:query var="rs" dataSource="${mariadb}">
	select userid from member
		where userid = ?
	<sql:param value="${sessionScope.userid}"/></sql:query> --%>
	
<sql:update var="cnt" dataSource="${mariadb}">
	insert into board (userid, title, contents)
	values (?,?,?)
	<sql:param value="${sessionScope.userid}"/>
	<sql:param value="${param.title}"/>
	<sql:param value="${param.contents}"/></sql:update>

<c:if test="${cnt gt 0}">
	<c:redirect url="/board/list.jsp"/></c:if>
<c:if test="${cnt eq 0}">
	<script>alert('다시 작성해주세요!')
	history.go(-1)</script></c:if>
		
		
		