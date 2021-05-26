<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>

<html lang = "ko">
    <head>
        <meta charset="UTF-8">
        <title>세미 프로젝트 V1-join</title>
        <link rel="stylesheet" href="/css/base.css">
        <style>
        </style>
    </head>

    <body>
        <div id = "wrap">
        <%@ include file="/layout/header.jsp" %>
        

        <div id = "container">
        
        <h2>회원가입</h2>

            <form name="joinfrm" id="joinfrm" method="post">

                <div><label for="userid">아이디</label>
                     <input type="text" name="userid" id ="userid" >
                </div>

                <div><label for="passwd">비밀번호</label>
                     <input type="password" name="passwd" id ="passwd" >
                </div>

                <div><label for="chkpasswd">비밀번호 확인</label>
                     <input type="password" name="chkpwd" id ="chkpwd">
                </div>

                <div><label for="name">이름</label>
                     <input type="text" name="name" id ="name" >
                </div>

                <div><label for="email">이메일</label>
                     <input type="text" name="email" id ="email">
                </div>

                <div><label></label>
                    <button type="button" id="okbtn">입력완료</button>
                    <button type="reset">다시입력</button>
                </div>

            </form>

        </div>

        <%@ include file="/layout/footer.jsp" %>
        
        </div>
        
        <script>
        	let okbtn = document.getElementById('okbtn');
        	okbtn.addEventListener('click', checkjoinfrm);
        	
        	function checkjoinfrm(){
        		var frm = document.getElementById('joinfrm');
        		if (frm.userid.value == '')
        			alert('아이디를 입력하세요!');
        		else if (frm.passwd.value == '')
        			alert('비밀번호를 입력하세요!');        		
        		else if (frm.chkpwd.value != frm.passwd.value)
        			alert('비밀번호가 서로 일치하지 않습니다!');
        		else if (frm.name.value == '')
        			alert('이름을 입력하세요!');
        		else if (frm.email.value == '')
        			alert('이메일을 입력하세요!');
        		else {
        			frm.action='/joinok.jsp';
        			frm.submit();
        		}   			
        	}
        </script>
        
    </body>
</html>
