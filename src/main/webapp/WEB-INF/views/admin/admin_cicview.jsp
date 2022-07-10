<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>admin_cicboardview</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<style type="text/css">
html,body{
height:100%;
width:100%;
}
.wrapper{
padding:1em;
height:100%;
width:100%;
}
.left{
height:100%;
width:20%;
float:left;
}
.right{
height:100%;
width:78%;
float:right;
}
</style>
</head>
<body>
<div class="wrapper">

<div class="left">
	<div id="sidemenu" class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="height:100%">
    		<class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
     	    <svg class="bi me-2" width="40" height="32"></svg>
      		<span class="fs-4">관리자</span>
		    <br><br>
		    
			    <ul class="nav nav-pills flex-column mb-auto">
			      <li class="nav-item">
			        <a href="admin_customer" class="nav-link link-dark" aria-current="page">
			          <svg class="admin_customer" width="16" height="16"></svg>
			          회원정보
			        </a>
			      </li>
			      <li>
			        <a href="admin_cicboard" class="nav-link link-dark">
			          <svg class="admin_cicboard" width="16" height="16"></svg>
			          고객센터
			        </a>
			      </li>
			      <li>
			        <a href="admin_reservelist" class="nav-link link-dark">
			          <svg class="admin_reservelist" width="16" height="16"></svg>
			          예매현황
			        </a>
			      </li>
			      <li>
			        <a href="admin_register" class="nav-link link-dark">
			          <svg class="admin_register" width="16" height="16"></svg>
			          공연등록
			        </a>
			      </li>
			      <li>
			        <a href="admin_concertlist" class="nav-link link-dark">
			          <svg class="admin_concertlist" width="16" height="16"></svg>
			          공연리스트
			        </a>
			      </li>
			    </ul>
		    <div class="dropdown">
		    	<hr>
		      	<a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
		        <img src="<c:url value="/resources/img/mainlogo.png"/>" alt="" width="32" height="32" class="rounded-circle me-2">
		        <strong>admin</strong>
		      	</a>
		     	<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
			       <li><a class="dropdown-item" href="index">홈페이지</a></li>
			        <li><a class="dropdown-item" href="logout">로그아웃</a></li>
		      	</ul>
		    </div><!-- dropdown -->
		</div>
</div><!--  left -->

<div class="right">

<div id="wrapper">
<div id="content">

<form action="modify" method="post" name="reg_frm">
<input type="hidden" name="bnum" value="${aview.bnum }">
<%String mid = (String)session.getAttribute("id"); %>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">아이디</label>
  <input type="text" class="form-control" name="bid" value="${aview.bid }" readonly> 
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" class="form-control" name="btitle" value="${aview.btitle }">
</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="bcontent">${aview.bcontent }</textarea>
</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">답변</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="breply" value="${aview.breply }" readonly>${aview.breply }</textarea>
</div>

<div class="btn_area">
		<input type="button" class="btn btn-warning" id="btn" value="글목록" onclick="javascripot:window.location='admin_cicboard'">
		<input type="button" class="btn btn-warning" id="btn" value="글 삭제" onclick="location='admin_cicdelete?bnum=${aview.bnum}'">
		<input type="button" class="btn btn-warning" id="btn" value="답변쓰기" onclick="location='reply?bnum=${aview.bnum}'">
  </div>
  
</div><!-- content -->  
</div><!-- wrapper -->  
</div><!-- right -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>		
</body>
</html>