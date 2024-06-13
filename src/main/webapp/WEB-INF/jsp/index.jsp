<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<% User registerUser = (User)session.getAttribute("registerUser"); %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>適性ジョブ診断</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
	<noscript>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/noscript.css" />
	</noscript>
</head>

<body>
<!-- Wrapper -->
	<div id="wrapper">
	
	<!-- Header -->
		<header id="header" class="alt">
			<img src="${pageContext.request.contextPath}/img/main_img.png" alt="" />
			<h1>適性ジョブ診断</h1>
		</header>
		
	
    <!-- Main -->
		<div id="main">
		
		<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<h2>Congue imperdiet</h2>
					<p>Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
						posuere. Nulla massa urna, fermentum eget quam aliquet.</p>
				</header>
				<footer class="major">
					<ul class="actions special">
						<li><a href="generic.html" class="button primary">Get Started</a></li>
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>

		</div>
 
        
        
        <p>就職を希望しているけれど</p>
        <p>「どんな仕事が向いているかわからない」<p>
        <p>「自分にできる仕事がわからない」</p>
        <p>簡単な設問に答えるだけで</p>
        <p>あなたにぴったりのお仕事を診断します</p>
        
    

   
        <form action="RegisterUser" method="post">
            <p>お名前を入力してください</p>
            名前：<input type="text" name="name" value="">
            <button type="submit" onclick="loction.href='RegisterUser?action=done'">START</button>
        </form>

	</div>
    
	</body>
</html>