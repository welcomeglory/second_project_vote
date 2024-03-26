<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Dto.VoteMember" %>
<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<VoteMember> list = new ArrayList<VoteMember>();
list = (ArrayList<VoteMember>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css?ver=1">
</head>
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
<h2>∙ 후보조회 ∙</h2>
<div class="table">
	<table style="width:700px;">
		<tr>
			<th>후보번호</th>
			<th>성명</th>
			<th>소속정당</th>
			<th>학력</th>
			<th>주민번호</th>
			<th>지역구</th>
			<th>대표전화</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getM_no()%></td>
			<td><%=list.get(i).getM_name()%></td>
			<td><%=list.get(i).getP_name()%></td>
			<td><%=list.get(i).getP_school()%></td>
			<td><%=list.get(i).getM_jumin()%></td>
			<td><%=list.get(i).getM_city()%></td>
			<td><%=list.get(i).getP_tel()%></td>
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