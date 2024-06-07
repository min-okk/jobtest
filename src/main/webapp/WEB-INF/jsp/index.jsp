<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<% User registerUser = (User)session.getAttribute("registerUser"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>適性ジョブ診断</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <div>
        <h1>適性ジョブ診断</h1>
        <p>あなたにぴったりのお仕事を・・・・・テキスト</p>
    </div>

    <div>
        <form action="RegisterUser" method="post">
            <p>お名前を入力してください</p>
            名前：<input type="text" name="name" value="">
            <button type="submit" onclick="loction.href='RegisterUser?action=done'">START</button>
        </form>
    </div>
    
</body>
</html>