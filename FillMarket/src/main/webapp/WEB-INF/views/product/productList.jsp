<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 목록</title>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<!-- css -->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css">
	
	<style>
	.row {
    display: flex;
    flex-wrap: wrap;
    margin-right: calc(-.5 * var(--bs-gutter-x));
    margin-left: calc(-.5 * var(--bs-gutter-x));
    justify-content: center;
	}
	
	.search{ text-align: center; }
	
		
	</style>
</head>
<body>
	<!-- 헤더와 네비바 -->
	<c:import url="../common/header.jsp" />
	<c:import url="../common/navbar.jsp" />
	<div id="container">
	  <!-- 네비게이터 바 -->
	  
	    <div class="row product" wieth="90%">
	        <!-- 검색창 -->
		        <div role="group" class="input-group d-flex align-items-center justify-content-center my-3"><!---->
			        <form class="search" style="width: 1000px;">
			        <input type="text" placeholder="제품명, 브랜드를 입력하세요" style="width: 600px; border-radius: 2px; border: 0px; wieth : 80%" id="productSearch">
			        <button type="submit" class="btn btn-outline-info">
			        	검색
			        </button>
			        </form>
		        </div>

			<div class="row row-cols-1 row-cols-md-4 g-4" style="width: 1024px;">
			<c:forEach items="${list}" var="product"> 
			  <div class="col">
			    <div class="card h-100">
			        <img src="${pageContext.request.contextPath}/resources/productUpload/${ product.changename }" class="card-img-top" alt="${ product.pname }" id="${ product.pno }">
					  <div class="card-body" style="z-index:10;">
					    <h5 class="card-title" id="${ product.pname }">${ product.pname }</h5>
					    <p class="card-text" id="${ product.pprice }">${ product.pprice }</p>
					    <button type="button" style="z-index:100;" class="btn btn-outline-info" onclick="goCart('${ product.pno }', '${ product.pname }', '${ product.pprice }');">장바구니 담기</button>
					  </div>
			    </div>
			  </div>
			  </c:forEach>
			  
			</div>
			<div>
			<br />
			</div>
	        <!-- 페이지 번호 -->
	        <div class="ListNum">
	           <c:out value=" ${pageBar}" escapeXml="false"/>
	        </div>
	    </div>
	</div>
	<c:import url="../common/footer.jsp" />
	
	<script>
	var divs = document.querySelectorAll('div');
	divs.forEach(function(div){
		div.addEventListener('click',logEvent, { 
			capture : true
		})
	});
	
	function logEvent(event){
		console.log(event.currentTarget.className);
	}
		function goCart(pno, pname, pprice){
			location.href = "${pageContext.request.contextPath}/cart/cartInsert.do?pno="+pno + "&pname="+pname + "&pprice="+pprice;
		}
		
		$(function(){
			$("img[id]").on("click",function(){
				var pno = $(this).attr('id');
				location.href = "${pageContext.request.contextPath}/product/productView.do?pno="+pno;
			});
		});
		
		
		$(function(){
			$(".card-img-top[id]").on("click",function(){
				var pno = $(this).attr("id");
				console.log("pno="+pno);
				location.href = "${pageContext.request.contextPath}/product/productView.do?pno="+pno;
			});
		});
	</script>
	<!-- JQuery CDN-->
	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous></script>	
</body>
</html>