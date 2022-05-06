<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
​<%@ page import="java.util.ArrayList" %>
<%@ page import="notice.bean.NoticeBean" %>
<%@ page import="notice.service.NoticeIndexService" %>
<% 	
	ArrayList<NoticeBean> noticeIndexList = new ArrayList<NoticeBean>();
	NoticeIndexService noticeIndexService = new NoticeIndexService();
	noticeIndexList = noticeIndexService.getIndexArticle();
	request.setAttribute("noticeIndexList", noticeIndexList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<title>공지 인덱스</title>
<style type="text/css">
.td_left {
	width: 100%;
	color: #1e1a1b;
	font-weight: bold;
	text-align: left;
	width: 200px;
	display: block;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	cursor:pointer;
	padding:0px;
	margin-bottom:10px;
	margin-top:10px;
 	text-decoration: underline;
}

.td_right {
	width: 100%;
	a: link;
	color: #1e1a1b;
	width: 100%;
	padding:0px;
	text-align: right;
}
table {
	width: 100%;
}
</style>
</head>
<body>

		<table>       
		
		<%
		for (int i=0; i < noticeIndexList.size(); i++) {
		%>
		<tr>
			<td class="td_left" onclick="location.href='noticeClDetail.no?nNUM=<%=noticeIndexList.get(i).getNNUM()%>&page=1';" title="<%=noticeIndexList.get(i).getNTITLE()%>"><%=noticeIndexList.get(i).getNTITLE()%></td>
			<td class="td_right"><span><%=noticeIndexList.get(i).getNDATE()%></span></td>
		</tr>

			<% } %>
			
		</table>
</body>
</html>