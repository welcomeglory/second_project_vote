<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.*" %>
<%@ page import="Dto.VoteResult" %>
<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<VoteResult> list = new ArrayList<VoteResult>();
list = (ArrayList<VoteResult>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voteResult</title>
</head>
<body>
<header>
	<h1>(과정평가형 정보처리산업기사)지역구의원투표 프로그램 ver 2024-03</h1>
</header>
<nav>
	<ul>
		<li><a href="memberList.do">∙후보조회</a></li>
		<li><a href="voteMember.do">∙투표하기</a></li>
		<li><a href="voteList.do">∙투표검수조회</a></li>
		<li><a href="voteResult.do">∙후보자등수</a></li>
		<li><a href="main.do">∙홈으로</a></li>	
	</ul>
</nav>
<section>
<h2>∙ 후보자등수 ∙</h2>
<div class="table">
	<table>
		<tr>
			<th>후보번호</th>
			<th>성명</th>
			<th>총투표건수</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getM_no()%></td>
			<td><%=list.get(i).getM_name()%></td>
			<td><%=list.get(i).getV_total() %></td>
		</tr>
		<%
		}
		%>
	</table>
</div>
</section>
<footer>
HRDKOREA Copyright@2024 All rights reserved. Human Resources Development Service of Korea
</footer>
</body>
</html>
