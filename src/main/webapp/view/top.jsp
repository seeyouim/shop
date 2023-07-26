<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        a:link{text-decoration:none; color:navy}
        a:visited{text-decoration:none; color:navy}
        a:hover{text-decoration:none; color:red}

		body{ text-align: center } 
		hr{
			width: 600px;
			border: 1px;
			color: navy;
		}

		div#header, div#nav{
			width: 600px;
			margin: 10px auto;
			text-align: center;
		}
		div#wrap{ margin: 0 auto; }
		div#log{float: right;}
    </style>
   
   
  </head>
  <body>
  <div id="head="wrap">
	  <hr noshade/>
	  <div ider">
		  <span class="title">
			 ICT SHOPPING CENTER
		  </span>
	  </div>
	  <hr noshade/>
	  <div id="nav">
		  <a href="/MyController?list&category=com001">컴퓨터</a> | 
		  <a href="/MyController?list&category=ele002">가전 제품</a> | 
		  <a href="/MyController?list&category=sp003">스포츠</a>
	  </div>
	  <div id="Log">
	  <%-- 로그인 성공 여부 --%>
	  	  <c:choose>
	  	  	<c:when test="${login == 'ok' }">
	  	  	${m_vo.name }님 환영합니다.
	  	  	<a href="/MyController?cmd=Logout">로그아웃</a>
	  	  	<a href="/MyController?cmd=viewcart">장바구니</a>
	  	  	</c:when>
	  	  	<c:otherwise>
	  	  		<a href="/MyController?cmd=login">로그인</a>
	  	  	</c:otherwise>
	  	  </c:choose>
	  </div>
	  <hr noshade/>
  </div>
  </body>
</html>