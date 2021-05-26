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
                     <input type="text" name="userid" id ="userid" required>
                </div>

                <div><label for="passwd">비밀번호</label>
                     <input type="text" name="passwd" id ="passwd" required>
                </div>

                <div><label></label>
                    <button type="button">로그인</button>
                </div>

            </form>
            
            <%@ include file="/layout/footer.jsp" %>
            
            </div>

        </div>
        
        
        
    </body>
</html>