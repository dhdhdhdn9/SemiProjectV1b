<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
        
        <h2>로그인</h2>

            <form name="loginfrm" id="loginfrm" method="post">

                <div><label for="userid">아이디</label>
                     <input type="text" name="userid" id ="userid">
                </div>

                <div><label for="passwd">비밀번호</label>
                     <input type="password" name="passwd" id ="passwd">
                </div>

                <div><label></label>
                    <button type="button" id="loginbtn">로그인</button>
                </div>

            </form>
            
            <%@ include file="/layout/footer.jsp" %>
            
            </div>
        </div>
        
        <script>
	        let loginbtn = document.getElementById('loginbtn');
        	loginbtn.addEventListener('click', loginok);
        	
        	function loginok(){
        		var frm = document.getElementById('loginfrm');
        		if (frm.userid.value == '')
        			alert('아이디를 입력하세요!');
        		else if (frm.passwd.value == '')
        			alert('비밀번호를 입력하세요!');        		
        		else {
        			frm.action='/loginok.jsp';
        			frm.submit();
        		}   			
        	}
        </script>
        
        
        
    </body>
</html>