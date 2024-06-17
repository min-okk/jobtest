<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<% User registerUser = (User)session.getAttribute("registerUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>適性ジョブ診断</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<!-- Wrapper -->
<div id="wrapper">
    <!-- container classレイアウト用 -->
    <div class="container">
        <!-- メイン画像 -->
        <h1>適職診断</h1>
        <div class="main_img">
            <img src="${pageContext.request.contextPath}/img/main_img.png" alt="適職診断">
        </div>

        <!-- main classレイアウト用 -->
        <main class="main">
            <!-- 説明/article要素 -->
            <h2>はじめに</h2>
            <section class="description">
                <p>就職を希望しているけれど</p>
                <p>「どんな仕事が向いているかわからない」</p>
                <p>「自分にできる仕事がわからない」</p>
                <p>そんなお悩みをもっていませんか？</p>
                <p>この診断では、簡単な設問に答えるだけで</p>
                <p>あなたにぴったりのお仕事を提案します！</p>
            </section>

            <hr>
            <!-- section要素 -->
            <section class="form">
                <h3>ニックネームを入力してください</h3>
                <form action="RegisterUser" method="post">
                    <input type="text" name="name" value="" placeholder="結果表時に使います">
                    <button type="submit" class="button buttonA" onclick="location.href='RegisterUser?action=done'">診断スタート</button>
                </form>
            </section>
        </main><!-- 【必須】main終了 -->
    </div><!-- 【必須】container終了 -->
    <!-- fotter要素 -->
    <footer>
        <p>© 2024サイトの著作権情報</p>
    </footer>
</div>
</body>
</html>