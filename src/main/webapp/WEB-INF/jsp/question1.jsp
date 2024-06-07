<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<% User registerUser = (User) session.getAttribute("registerUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>あなたにぴったりのお仕事をさがす</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<h1>適性ジョブ診断</h1>
<h2>質問</h2>
<p><%= registerUser.getName() %>さんに質問です</p>
<p>人とコミュニケーションを取るのが好きな方だ</p>

<form action="ShindanServlet" method="post">
	<button type="submit" name="action" value="q1y">はい</button>
	<button type="submit" name="action" value="q1n">いいえ</button>
</form>
</div>

</body>
</html>