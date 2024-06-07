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
<h2>診断結果</h2>
<p><%= registerUser.getName() %>さんにぴったりのお仕事は</p>
<p>●●●●です！</p>

<form action="ShindanServlet" method="post">
	<button type="submit" onclick="loction.href='#'">前の質問に戻る</button>
	<button type="submit" onclick="loction.href='/WEB-INF/jsp/index.jsp'">最初からやり直す</button>
</form>
</div>

</body>
</html>