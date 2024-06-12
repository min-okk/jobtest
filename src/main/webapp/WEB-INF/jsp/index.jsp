<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<% User registerUser = (User)session.getAttribute("registerUser"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>適性ジョブ診断</title>
<link rel="stylesheet" type="text/css" href="https://unpkg.com/modern-css-reset/dist/reset.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <article>
        <h1>適性ジョブ診断</h1>
        <div><img src="${pageContext.request.contextPath}/img/main_img.png"></div>
        
        <section class="description">
        <p>就職を希望しているけれど</p>
        <p>「どんな仕事が向いているかわからない」<p>
        <p>「自分にできる仕事がわからない」</p>
        <p>簡単な設問に答えるだけで</p>
        <p>あなたにぴったりのお仕事を診断します</p>
        </section>
    

    <section class="form">
        <form action="RegisterUser" method="post">
            <p>お名前を入力してください</p>
            名前：<input type="text" name="name" value="">
            <button type="submit" onclick="loction.href='RegisterUser?action=done'">START</button>
        </form>
    </section> 
    
    </article>

    
</body>
</html>