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
<title>index</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<style>
.card{
float:left;
margin:3em 0 0 5em;
}

</style>
</head>
<body>
<%@ include file="include/header.jsp" %>
<%@ include file="index_banner.jsp" %>

	<div class="wrapper">
	<table>
	<tr>
	<td>
		<c:forEach items="${index}" var = "dto">
			<div class="card" style="width: 19rem;">
			  	<img src="${dto.pic}" class="card-img-top" alt="...">
			  	<div class="card-body">
				    <h5 class="card-title" align="center">제목 : ${dto.ctitle}</h5>
				    <p class="card-text">장소 : ${dto.cplace}</p>
				    <p class="card-text">날짜 : <fmt:formatDate pattern="yyyy-MM-dd" value="${dto.cstartdate}"/> ~ 
				      					 <fmt:formatDate pattern="yyyy-MM-dd" value="${dto.cenddate}"/></p>
				    <p class="card-text">시간 : ${dto.ctime}분</p>
				    <script type="text/javascript">
									function resultcommas() {
									
									    var number = "<c:out value='${dto.cprice}'/>";
									    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
									}
									var str = resultcommas();
									</script>
				    <p class="card-text">가격 : <script>document.write(str);</script>원</p>
				    <a href="seatpage?cnum=${dto.cnum}" class="btn btn-warning">예매하기</a>
		   	 	</div>
			</div>
		</c:forEach>
		</td>
		</tr>
	</table>	
	</div>	
	
<%@ include file="include/footer.jsp" %>	
</body>
</html>