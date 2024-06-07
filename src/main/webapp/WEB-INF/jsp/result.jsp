<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.JobList" %>
<%@ page import="java.util.List" %>
<%
List<JobList> jobLists = (List<JobList>) request.getAttribute("jobLists");
if (jobLists != null && !jobLists.isEmpty()) {
    JobList jobList = jobLists.get(0); // 検索結果は1件のみ想定
%>
<p>あなたにぴったりの仕事は「<%= jobList.getJobName() %>」です。</p>
<p>この仕事は、<%= jobList.getComment() %> という特徴があります。</p>
<p>あなたは、<%= jobList.getType1() %>、<%= jobList.getType2() %>、<%= jobList.getType3() %> の資質を持っているため、この仕事に向いていると考えられます。</p>
<% } else { %>
<p>診断結果が見つかりませんでした。</p>
<% } %>