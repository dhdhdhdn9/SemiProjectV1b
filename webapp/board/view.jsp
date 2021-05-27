<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 본문에 줄바꿈 적용 시키기 -->
<c:set var="cr" value="
" scope="application" />
<c:set var="br" value="<br/>" scope="application" />

<fmt:setBundle basename="soonj.jdbc"/>
<fmt:message key="url" var="url"/>
<fmt:message key="drv" var="drv"/>
<fmt:message key="usr" var="usr"/>
<fmt:message key="pwd" var="pwd"/>
<fmt:requestEncoding value="UTF-8"/>

<sql:setDataSource url="${url}" driver="${drv}" user="${usr}" password="${pwd}"
	var="mariadb"/>

<sql:update dataSource="${mariadb}">
	update board set views = views + 1
	where bdno = ?
	<sql:param value="${param.bdno}"/></sql:update>
	
<sql:query var="rs" dataSource="${mariadb}">
	select * from board where bdno = ?
	<sql:param value="${param.bdno}"/></sql:query>



<!doctype html>

<html lang = "ko">
    <head>
        <meta charset="UTF-8">
        <title>세미 프로젝트 V1-게시판</title>
        <link rel="stylesheet" href="/css/base.css">
    </head>

    <body>
        <div id = "wrap">
        	<%@ include file="/layout/header.jsp" %>
        
        	<div id = "container">
        
	        	<h1>게시판 - 본문</h1>
	        	<div id="view">
	        		<c:forEach var="r" items="${rs.rows}">
		        		<div><label>제목</label>
		        			 <span>${r.title}</span></div>
		        		<div><label>작성글 정보</label>
		        			<span>${r.userid} / ${r.regdate} / ${r.thumbup} / ${r.views}</span></div>
		        		<div><label class="dragup">본문</label>
		        			<span class="contents">${fn:replace(r.contents, cr, br)}</span></div>
	        		</c:forEach>
	        			<div><label></label>
		        			<button type="button" id="listbtn">목록으로</button></div>
		        		<div><label></label>
		        			<button type="button" id="delbtn">삭제하기</button></div>
	        	</div>
          
            </div>
            
            <%@ include file="/layout/footer.jsp" %>

        </div>
        
        <script>
        	var listbtn = document.getElementById('listbtn');
        	var delbtn = document.getElementById
        	listbtn.addEventListener('click', tolist);
        	
        	function tolist() {
        		location.href='/board/list.jsp';
        	}
        	
        </script>


    </body>
</html>
