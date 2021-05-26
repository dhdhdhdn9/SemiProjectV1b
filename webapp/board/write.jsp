<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html lang = "ko">
    <head>
        <meta charset="UTF-8">
        <title>세미 프로젝트 V1-view</title>
        <link rel="stylesheet" href="/css/base.css">
    </head>

    <body>
        <div id = "wrap">
        <%@ include file="/layout/header.jsp" %>
        

        <div id = "container">
        
        <h2>게시판 본문글</h2>
        
        <h2>게시판</h2>
        
        	<div id="content">
	            <div><label for="title">제목</label>
	                     시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!
	            </div>
	
	            <div><label for="name">작성자</label>
	                     으하하하
	            </div>

                <div><label for="date">작성일</label>
                     2020-04-30 14:49:05 (777)
                </div>

                <div><label for="content">본문</label>
                <form>
                      <textarea name="intro" cols="100" rows="10" readonly>시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! 시간은 금이라구, 친구! </textarea>
                 </form>
                 </div>
              </div>
              
              <%@ include file="/layout/footer.jsp" %>
              
              </div>

        </div>
        
        


    </body>
</html>
