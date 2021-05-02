<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/user/taglib.jsp"%>
<!DOCTYPE html>
<title>Trang Chủ</title>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${categorys }">
						<li><a href='<c:url value="/san-pham/${item.id }"/>'><span
								class="icon-chevron-right"></span> ${ item.name }</a></li>
					</c:forEach>
				
					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">${TotalPriceCart}</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src='<c:url value="/assets/user/img/paypal.jpg" />'
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">
			<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FDiamond-Store-315-N%25C3%25BAi-Th%25C3%25A0nh-%25C4%2590%25C3%25A0-N%25E1%25BA%25B5ng-102786424550506&tabs=timeline&width=180&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="180" height="500" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
			</a><br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src='<c:url value="/assets/user/img/bootstrap-ecommerce-templates.png" />'
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.4517436453903!2d108.21956925020889!3d16.04203104437341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219c272444239%3A0x772a8f49b78f51d0!2zMzE1IE7DumkgVGjDoG5oLCBIb8OgIEPGsOG7nW5nIELhuq9jLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1605497689523!5m2!1sen!2s" width="180" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				
			</ul>

		</div>
		<div class="span9">
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
						<c:forEach var="item" items="${slides}" varStatus="index">
							<c:if test="${index.first}">
								<div class="item active">
							</c:if>
							<c:if test="${not index.first }">
								<div class="item">
							</c:if>
							<img style="width: 100%"
								src='<c:url value="/assets/user/img/slides/${item.img}" />'
								alt="bootstrap ecommerce templates">
							<div class="carousel-caption">
								<h4>${ item.caption }</h4>
								<p>
									<span>${item.content }</span>
								</p>
							</div>
					</div>
					</c:forEach>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--
New Products
-->
		<div class="well well-small">
			<h3>Sản Phẩm Mới</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">
						<c:if test="${products.size()>0 }">
							<div class="item active">
								<ul class="thumbnails">
								<c:forEach var="item" items="${products}" varStatus="loop">
									<li class="span3">
											<div class="thumbnail">
												<a class="zoomTool" href="chi-tiet-san-pham/${item.id_product }"
													title="add to cart"><span class="icon-search"></span>
													QUICK VIEW</a> <a href="chi-tiet-san-pham/${item.id_product }" class="tag"></a> <a
													href="chi-tiet-san-pham/${item.id_product }"><img
													src='<c:url value="/assets/user/img/${item.img }" />'
													alt="bootstrap-ring"></a>
											</div>
										</li>
										<c:if test="${(loop.index +1)%4 == 0 || (loop.index+1) == products.size() }">
												</ul>
											</div>
											<c:if test="${loop.index+1 < products.size()}">
												<div class="item">
											<ul class="thumbnails">
											</c:if>
										</c:if>
								</c:forEach>
						</c:if>
					</div>
					<a class="left carousel-control" href="#newProductCar"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>


		</div>
		<!--
	Featured Products
	-->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="products.html"
					title="View more">VIew More<span class="icon-plus"></span></a> Sản
				phẩm nổi bật
			</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<c:if test="${products.size()>0 }">
					<ul class="thumbnails">
						<c:forEach var="item" items="${products }" varStatus="loop">
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="product_details.html"
										title="add to cart"><span class="icon-search"></span>
										QUICK VIEW</a> <a href="chi-tiet-san-pham/${item.id_product }"><img
										src='<c:url value="/assets/user/img/${item.img }" />' alt=""></a>
									<div class="caption">
										<h5>${item.name}</h5>
										<h4>
											<a class="defaultBtn" href="product_details.html"
												title="Click to view"><span class="icon-zoom-in"></span></a>
											<a class="shopBtn" href="<c:url value="/AddCart/${item.id_product }"/>" title="add to cart"><span
												class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber
													type="number" groupingUsed="true" value="${item.price}" />₫</span>
										</h4>
									</div>
								</div>
							</li>
							<c:if
								test="${(loop.index +1)%3 == 0 || (loop.index+1) == products.size() }">
					</ul>
					<c:if test="${loop.index+1 <products.size()}">
						<ul class="thumbnails">
					</c:if>
				</c:if>
				</c:forEach>
				</c:if>
			</div>
		</div>
		<hr>
		<div class="well well-small">
			<a class="btn btn-mini pull-right" href="#">Xem thêm<span
				class="icon-plus"></span></a> Tất cả sản phẩm
		</div>

	</div>
	</div>


</body>
