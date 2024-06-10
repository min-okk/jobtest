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
</head>
<body>

<% User registerUser = (User) session.getAttribute("registerUser"); %>
<%
List<JobList> jobLists = (List<JobList>) request.getAttribute("jobLists");
if (jobLists != null && !jobLists.isEmpty()) {
    JobList jobList = jobLists.get(0); // 検索結果は1件のみ想定
%>
<p><%= registerUser.getName() %>さんに、ぴったりのお仕事は「<%= jobList.getJobName() %>」です。</p>
<p><%= jobList.getComment() %> </p>
<p>あなたの長所は、<%= jobList.getType1() %>、<%= jobList.getType2() %>、<%= jobList.getType3() %> このような資質を持っているため、この仕事に向いていると考えられます。</p>
<p>例えばこんなお仕事</p>
<ul>
<li><%= jobList.getJob1() %></li>
<li><%= jobList.getJob2() %></li>
<li><%= jobList.getJob3() %></li>
</ul>
<% } else { %>
<p>診断結果が見つかりませんでした。</p>
<% } %>
</body>
</html>