<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>HTML5 기본구조</title>
</head>
<body>
	<header>
		<div class="kimhyejin">
			<h1>Hello world!</h1>
			<nav id="gnb">
				<ul>
					<li>메뉴1</li>
					<li>메뉴2</li>
					<li>메뉴3</li>
				</ul>
			</nav>
		</div>

	</header>

	<section class="banner_slider">
		<div id="slider" class="nivoSlider">
			<img src="http://edu19.dothome.co.kr/metro/image/alp1.jpg"
				title="슬라이드1">>
		</div>
	</section>
	<section id="contents" class="kimhyejin">
		<article id="main">
			<P>The time on the server is ${serverTime}.</P>
		</article>

	</section>
	<footer>
		<p class="kimhyejin">주소: 미국 애리조나주 450-1 밥아저씨 햄버거스토어</p>
	</footer>
</body>
</html>
