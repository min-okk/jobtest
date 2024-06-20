<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<% User registerUser = (User) session.getAttribute("registerUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>あなたにぴったりのお仕事をさがす</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<div class="wrapper">
<!-- 【必須】外箱 -->
<div class="container">
<!-- main classレイアウト用 -->
<main class="main">

<h1>適性ジョブ診断</h1>

<h2>QUESTION</h2>

<p><span class="username"><%= registerUser.getName() %></span>さんに質問です</p>

<section class="question">
<h3>日ごろから整理整頓を心がけている</h3>
<img src="${pageContext.request.contextPath}/img/q7.png" alt="整理整頓">
</section>

<section class="select">
<form action="ShindanResultServlet" method="post">
	<button type="submit" name="resultId" value="6"  class="button buttonA">はい</button>
	<button type="submit" name="resultId" value="5"  class="button buttonA">いいえ</button>
</form>
</section>

<!-- ブラウザバック -->
<button type="submit" name="action" value="" class="button-back" onclick="window.history.back();">前のページに戻る</button>

</main>
</div>
</div>

</body>
</html>