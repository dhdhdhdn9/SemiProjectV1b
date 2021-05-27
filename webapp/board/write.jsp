<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- session.userid == null / session.userid == '' 
		=> empty session.userid로 작성 가능 -->
<c:if test="${empty sessionScope.userid}">
	<script>alert('로그인이 필요합니다!')
		location.href='/login.jsp'</script>
</c:if>

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
        
        	<h1>게시판 - 글쓰기</h1>
        	<form name="boardfrm" id="boardfrm">
        		<div>
        			<label>제목</label>
        			<input type="text" name="title"/></div>
        		<div>
        			<label>작성자</label>
        			<input type="text" name="userid" value="${sessionScope.userid}" readonly/></div>
        		<div>
        			<label class="dragup">본문</label>
        			<textarea name="contents" id="contents"></textarea></div>
        		<div><label></label>
        			<button type="button" id="writebtn">입력완료</button>
        			<button type="reset">다시입력</button></div>
        	</form>
          
            </div>
            
            <%@ include file="/layout/footer.jsp" %>

        </div>
        
        <script>
	        let writebtn = document.getElementById('writebtn');
	        writebtn.addEventListener('click', writeok);
        	
        	function writeok(){
        		var frm = document.getElementById('boardfrm');
        		if (frm.title.value == '') {
        			alert('제목을 입력하세요!');
        			frm.title.focus();
        		} else if (frm.contents.value == '') {
        			alert('내용을 입력하세요!');     
        			frm.contents.focus();
        		} else {
        			frm.method= 'post';
        			frm.action='/board/writeok.jsp';
        			frm.submit();
        		}   			
        	}
        </script>

    </body>
</html>
