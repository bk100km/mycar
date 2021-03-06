<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="qna.bean.QnaQBean"%>
<%@page import="qna.bean.QnaABean"%>
<%
	QnaQBean article = (QnaQBean) request.getAttribute("article");
	QnaABean reply = (QnaABean) request.getAttribute("reply");
	String nowPage = (String) request.getAttribute("page");
%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	pageContext.setAttribute("crcn", "\r\n");
	pageContext.setAttribute("br", "<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard-dynamic-subset.css"
	class="svelte-p5qu1m" data-svelte="svelte-1yifjfe">


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<link href="/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
#articleForm {
	width: 95%;
	max-width: 700px;
	margin: 0 auto;
}

h2 {
	text-align: left;
	font-weight: bold;
	word-wrap: break-word;
}

#hrOne {
	border: 1px solid black;
}

#hrTwo {
	border: 1px solid gray;
}

#basicInfoArea {
	padding: 20px 5px;
	height: 400px auto;
	width: 100%;
	max-width: 700px;
	text-align: left;
	font-size: 14pt;
	word-break: break-all;
}

#articleForm {
	width: 90%;
	margin: 0 auto;
}

textarea {
	width: 90%;
	height: 6.25em;
	border: none;
	resize: none;
}

#reply {
	width: 100%;
}
.btn-default {
	color: #f5f5f5 !important;
	background-color: #1e1a1b !important;
	border-color: #1e1a1b !important;
}
</style>
</head>

<body>
	<jsp:include page="/view/main/mycarAdHeader.jsp"></jsp:include>

	<!-- ????????? ?????? -->

	<section id="articleForm">
		<%
			if (reply == null) {
		%>
		<button type="button" class="btn btn-default btn-sm" onclick="location.href='qnaQAdUpdate.qn?QNUM=<%=article.getQNUM()%>&page=<%=nowPage%>'" title="??????">????????? ??????</button>
		<button type="button" class="btn btn-default" data-toggle="modal"
			data-target="#delete" title="??????">????????? ??????</button>
		<div class="modal fade" id="delete" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body" style="text-align:center;">????????? ?????? ???????????????????</div>
					<div class="modal-footer">
						<button type="button"
							onclick="location.href='qnaQAdDelete.qn?QNUM=<%=article.getQNUM()%>&page=<%=nowPage%>'"
							class="btn btn-secondary btn" title="??????">??????</button>
						<button type="button" class="btn btn-secondary btn"
							data-dismiss="modal" title="??????">??????</button>
					</div>
				</div>
			</div>
		</div>
		<input
			type="button" value="??????" class="btn btn-default"
			onclick="location='qnaQAdList.qn?page=<%=nowPage%>'" title="???????????? ??????"
			alt="QnA ???????????? ??????">
		<section id="TITLE">
			<h2>${article.QTITLE}</h2>
			<hr id="hrOne">
			<br />
			<hr id="hrTwo">
			<section id="INFO">${article.QID} | ${article.QDATE} | ??????
				${article.QREAD}</section>
			<section id="basicInfoArea">${fn:replace(article.QCON, crcn, br)}</section>
			<section id="replyForm">
				<hr id="hrOne">
				<h2>&#9398; ??????</h2>
				<hr id="hrTwo">
				<form method="post"
					action="<%=request.getContextPath()%>/qnaAWrite.qn">
					<table id="reply">
						<tr>
							<td colspan="2" align="left"><b>??????</b>
								<div></div></td>
						</tr>
						<tr>
							<td><input type="hidden" name="QNUM"
								value="<%=article.getQNUM()%>"></td>
							<td><input type="hidden" name="page" value="<%=nowPage%>"></td>
						</tr>
						<tr>
							<td><textarea type="text" name="ACON" placeholder="??????"
									cols="50" rows="15" required="required" class="form-control"
									alt="?????? ?????? ?????? ???"></textarea></td>

						</tr>
						<tr>
							<td>
									<button class="btn btn-default" type="submit" title="??????">??????</button>
							</td>
						</tr>
					</table>
				</form>
			</section>
		</section>
		<%
			} else {
		%>
		<button type="button" class="btn btn-default btn-sm" onclick="location.href='qnaQAdUpdate.qn?QNUM=<%=article.getQNUM()%>&page=<%=nowPage%>'" title="??????">????????? ??????</button>
		<button type="button" class="btn btn-default" data-toggle="modal"
			data-target="#delete" title="??????">????????? ??????</button>
		<div class="modal fade" id="delete" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body" style="text-align:center;">????????? ?????? ???????????????????</div>
					<div class="modal-footer">
						<button type="button"
							onclick="location.href='qnaQAdDelete.qn?QNUM=<%=article.getQNUM()%>&page=<%=nowPage%>'"
							class="btn btn-secondary btn" title="??????">??????</button>
						<button type="button" class="btn btn-secondary btn"
							data-dismiss="modal" title="??????">??????</button>
					</div>
				</div>
			</div>
		</div> <input
			type="button" value="??????"
			onclick="location='qnaQAdList.qn?page=<%=nowPage%>'"
			class="btn btn-default" title="???????????? ??????" alt="QnA ???????????? ??????">
		<section id="TITLE">
			<h2>${article.QTITLE}</h2>
			<hr id="hrOne">
			<br />
			<hr id="hrTwo">
			<section id="INFO">${article.QID}|${article.QDATE} | ??????
				${article.QREAD}</section>
			<section id="basicInfoArea">${fn:replace(article.QCON, crcn, br)}</section>
		</section>
		<hr id="hrOne">
		<section id="REPLY">
			<button type="button" class="btn btn-default" data-toggle="modal"
			data-target="#Adelete" title="??????">?????? ??????</button>
		<div class="modal fade" id="Adelete" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body" style="text-align:center;">????????? ?????? ???????????????????</div>
					<div class="modal-footer">
						<button type="button"
							onclick="location.href='qnaADelete.qn?QNUM=<%=article.getQNUM()%>&page=<%=nowPage%>'"
							class="btn btn-secondary btn" title="??????">??????</button>
						<button type="button" class="btn btn-secondary btn"
							data-dismiss="modal" title="??????">??????</button>
					</div>
				</div>
			</div>
		</div>
			<hr id="hrTwo">
			<section id="REPLYCONTENT">
				<td>????????? | <%=reply.getADATE()%></td>
				<h3 id="basicInfoArea">${fn:replace(reply.ACON, crcn, br)}</h3>
			</section>
		</section>
		<%
			}
		%>
	</section>

	<jsp:include page="../main/mycarFooter.jsp"></jsp:include>
</body>
</html>