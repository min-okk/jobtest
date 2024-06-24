<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.JobList" %>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>診断結果 - 適性ジョブ診断</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
</head>
<body>
<!-- Wrapper -->
<div class="wrapper">
    <!-- 【必須】外箱 -->
    <!-- container classレイアウト用 -->
    <div class="container">
        <h1>適職診断</h1>
    <!-- main classレイアウト用 -->
    <main class="main">

<% User registerUser = (User) session.getAttribute("registerUser"); %>
<%
List<JobList> jobLists = (List<JobList>) request.getAttribute("jobLists");
if (jobLists != null && !jobLists.isEmpty()) {
    JobList jobList = jobLists.get(0); // 検索結果は1件のみ想定
%>

<!-- 結果表示　-->
         <section class="result_area">
            <p><span class="username"><%= registerUser.getName() %></span>さんに</p>
            <p>ぴったりのお仕事は</p>
            <p><span class="jobname"><%= jobList.getJobName() %></span>です。</p>
          
          <!--画像エリア-->
            <img src="${pageContext.request.contextPath}/img/<%= jobList.getJobImg() %>" alt="ぴったりのお仕事">
            
            <!-- コメント -->
            <p class="jobcomment"><%= jobList.getComment() %></p>
            
            <!-- 資質 -->
                <div class="humantype">
                <h2><%= registerUser.getName() %>さんの資質</h2>
                <ul>
                    <li><%= jobList.getType1() %></li>
                    <li><%= jobList.getType2() %></li>
                    <li><%= jobList.getType3() %></li>
                </ul>         
            </div>
            
            <p>このような資質を持っているため、次のような職業に向いていると考えられます。</p>
            <!-- 職業 -->
             <div class="jobtype">
                <h2>たとえばこんな職業</h2>
                <ul>
                    <li><%= jobList.getJob1() %></li>
                    <li><%= jobList.getJob2() %></li>
                    <li><%= jobList.getJob3() %></li>
                </ul>
            </div>          
</section>

<!--ジョブリッジ紹介-->
        <section class="jobridge">
            <h2>気になるお仕事は見つかりましたか？</h2>
            <img src="img/infomation.png" alt="ジョブリッジの紹介">
            <p>ジョブリッジでは、就職を目指す障がいのある方を対象に、就職に必要な知識やスキル向上のためのサポートをおこなっています。</p>
            <p><span id="strong">一人ひとりの特性に寄り添ったカリキュラム</span>を提供しているのが、ジョブリッジの大きな特徴です。</p>
        </section>
<hr>
        <section class="contact">
            <!-- お問い合わせ -->
            <h2>就労移行支援について</h2>
            <p>「もっと詳しく知りたい！」という方は</p>
            <p>お気軽にお問合せください。</p>
            <button class="button buttonA" onclick="location.href='https://www.jobridge.info/contact'">お問い合わせ</button>

			<form action="${pageContext.request.contextPath}/WelcomeServlet" method="post">
				<button class="button-back" type="submit" name="action" value="pageback">診断トップに戻る</button>
			</form>
            </section>
            </main>
    <!-- 【必須】main終了 -->

    <!-- fotter要素 -->
    <footer>
        <p>(c) 2024 ジョブリッジ｜<a href="">Policy</a></p>
    </footer>
</div><!-- 【必須】wrapper終了 -->

</div><!-- 【必須】container終了 -->


<% } else { %>
<p>診断結果が見つかりませんでした。</p>
<% } %>
</body>
</html>