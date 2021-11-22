<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FillMarket</title>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
	<c:import url="views/common/header.jsp" />
	<c:import url="views/common/navbar.jsp" />

	<main>

		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2" class="active"
					aria-current="true"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item">
					<img class="bd-placeholder-img" width="100%" height="100%"
						src="${pageContext.request.contextPath }/resources/images/Carousel1.png"
						alt="">
					<div class="container">
						<div class="carousel-caption text-start">
							<h1>건강을 위한 선택</h1>
							<p>
								나만을 위한 맞춤영양제를 찾아보세요! <br> 효과적인 방법으로 부작용 없는 영양제를 추천 해 드립니다!!
							</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">시작하기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item active">
					<img class="bd-placeholder-img" width="100%" height="100%"
						src="${pageContext.request.contextPath }/resources/images/Carousel2.png"
						alt="">
					<div class="container">
						<div class="carousel-caption text-start">
							<h1>비타민에 대한 오해와 진실!</h1>
							<p>
								비타민 좋다고 무조건 드시나요?<br>알고먹으면 내 몸을 소중히 할 수 있습니다!
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="bd-placeholder-img" width="100%" height="100%"
						src="${pageContext.request.contextPath }/resources/images/Carousel3.png"
						alt="">
					<div class="container">
						<div class="carousel-caption text-start">
							<h1>다량 섭취, 좋은것이 아닙니다!</h1>
							<p>
								건강에 도움을 주는 영양제, 많이 복용한다고 좋은것이 아닙니다 <br> 영양제 오 남용에 대해 알아봅시다!
							</p>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<div class="container marketing">

			<div class="row">
				<div class="col-lg-4">
					<img
						src="${pageContext.request.contextPath }/resources/images/daniel.png"
						alt="">
					<rect width="100%" height="100%" fill="#777"></rect>
					<h2>God Daniel</h2>
					<p>
						<a class="btn btn-secondary" href="#">GitHub »</a>
					</p>
				</div>

				<div class="col-lg-4">
					<img
						src="${pageContext.request.contextPath }/resources/images/gichang.png"
						alt="">
					<h2>Gichang</h2>
					<p>
						<a class="btn btn-secondary" href="https://github.com/rlckdwkd55">GitHub
							»</a>
					</p>
				</div>

				<div class="col-lg-4">
					<img
						src="${pageContext.request.contextPath }/resources/images/Jieun.png"
						alt="">
					<h2>Jieun</h2>
					<p>
						<a class="btn btn-secondary" href="https://github.com/writer100">GitHub
							»</a>
					</p>
				</div>

				<div class="col-lg-4">
					<img
						src="${pageContext.request.contextPath }/resources/images/Changhwan.png"
						alt="">
					<h2>Changhwan</h2>
					<p>
						<a class="btn btn-secondary"
							href="https://github.com/ChangHWanChoi">GitHub »</a>
					</p>
				</div>

				<div class="col-lg-4">
					<img
						src="${pageContext.request.contextPath }/resources/images/Yeji.png"
						alt="">
					<h2>Yeji</h2>
					<p>
						<a class="btn btn-secondary" href="https://github.com/fiveeasy">GitHub
							»</a>
					</p>
				</div>

				<div class="col-lg-4">
					<img
						src="${pageContext.request.contextPath }/resources/images/Seungbyung.png"
						alt="">
					<h2>Seungbyung</h2>
					<p>
						<a class="btn btn-secondary" href="https://github.com/ssgbbo">GitHub
							»</a>
					</p>
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading mb-3">꼼꼼한 배송에 놀라지마세요.</h2>
					<p class="lead">
						Can You Pill Market만의 차별화된 배송 시스템으로 <br> 여러분의 건강을 안전하게 배송 해
						드립니다.
					</p>
				</div>
				<div class="col-md-5">
					<img
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						src="${pageContext.request.contextPath }/resources/images/category1.png"
						alt="">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading mb-3 ms-5">좋은것만 골라 드려요.</h2>
					<p class="lead ms-5">
						편안하게 건강을 챙기실 수 있도록 <br> 꼼꼼한 검수를 통해 최고의 상품만을 전달 드립니다. <br>
						Can You Pill Market이 제안하는 영양제를 만나보세요!
					</p>
				</div>
				<div class="col-md-5 order-md-1 ">
					<img
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						src="${pageContext.request.contextPath }/resources/images/category2.png"
						alt="">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette mb-5 pb-5">
				<div class="col-md-7">
					<h2 class="featurette-heading mb-3">최저가 판매를 약속 드립니다.</h2>
					<p class="lead">
						구매자와 판매자 사이의 유통구조를 단순화 하여<br> Can You Pill Market만의 독자적인 판매
						시스템으로<br> 건강과 지갑을 함께 지켜드려요.
					</p>
				</div>
				<div class="col-md-5">
					<img
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						src="${pageContext.request.contextPath }/resources/images/category3.png"
						alt="">
				</div>
			</div>

		</div>
	</main>

	<div
		style="position: fixed; bottom: 20px; right: 20px; font-size: 40px; text-decoration-line: none;">
		<a href="#Top">🔝</a>
	</div>

	<c:import url="views/common/footer.jsp" />
</body>
</html>
