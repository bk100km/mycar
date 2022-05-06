<%@page import="notice.bean.NoticeBean"%>
<%@page import="notice.bean.NoticePageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	NoticeBean article = (NoticeBean)request.getAttribute("article");
	String nowPage = (String)request.getAttribute("nowPage");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>공지 수정 | MyCar</title>
	<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	}
</script>
<style type="text/css">
h2 {
	font-size: 24pt;
	text-align: center;
}

table {
	margin: 0 auto;
	padding: 0;
	width: 95%;
	max-width: 700px;
}
.btn-default {
	background-color: #1e1a1b !important;
	color: white !important;
}
.td_left {
	width: 20%;
	font-size: 18pt;
	text-align: center;
}

.td_right {
	width: 80%;
}

#hrOne {
	border: 1px solid #1e1a1b;
	max-width: 700px;
}

#hrTwo {
	border: 1px solid gray;
	max-width: 700px;
}

hr {
	max-width: 700px;
}

#commandCell {
	text-align: center;
}

#writeForm {
	width: 90%;
	margin: 0 auto;
}
textarea {
	width: 100%;
	height: 6.25em;
	border: none;
	resize: none;
}
   body {
    font-family: pretendard !important;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}
</style>

<script type = "text/javascript">
function fileCheck(obj){
pathpoint = obj.value.lastIndexOf('.');
filepoint = obj.value.substring(pathpoint+1, obj.length);
filetype = filepoint.toLowerCase();
if(filetype=='jpg'||filetype=='gif'||filetype=='png'||filetype=='jpeg'||
   filetype=='bmp'){
   
   }else{
   obj.outerHTML = obj.outerHTML;
   $('#imgCheck').modal({backdrop: 'static', keyboard: false});
   
   return false;
   }
   
   if(filetype=='bmp'){
   upload = $('#bmpCheck').modal({backdrop: 'static', keyboard: false});
	  
   if(upload){
	      
   }else
    obj.outerHTML = obj.outerHTML;  
   return false;
   }
   }
   </script>
</head>
<body>
<jsp:include page="../main/mycarAdHeader.jsp"></jsp:include>

<!-- 게시판 등록 -->

	<section id="writeForm">
		<h2>게시판글수정</h2>
		<br />
		<hr id="hrOne">
		<br />
<form action="noticeModifyPro.no?nNUM=<%=article.getNNUM() %>&page=<%=nowPage%>" method="post" name = "modifyform">
<input type = "hidden" name = "NNUM" value = "<%=article.getNNUM()%>"/>
			<table>
				<tr>
					<td class="td_left"><label for = "NTITLE">제목</label></td>
					<td class="td_right"><input type="text" name="NTITLE" id = "NTITLE" class="form-control"
					value="<%=article.getNTITLE()%>" /></td>
				</tr>
				</table>
				<br />
				<hr />
				<br />
				<table>
				<tr>
					<td class="td_left"><label for="NCON">내 용</label></td>
					<td class="td_right"><textarea id="NCON" class="form-control"
					name="NCON" cols="40" rows="15"><%=article.getNCON()%></textarea>
					</td>
				</tr>
			</table>
				<br />
				<hr />
				<br />
			<table>
			<tr>
					<td class="td_left"><label for="NFILE">파일 첨부</label></td>
					<td class="td_right"><input name="NFILE" type="file" 
						onchange="fileCheck(this)" accept="image/gif, image/jpeg, image/png" id="NFILE" title="파일 첨부"></td>
				</tr>
			</table>
			<br/>
			<hr/>
			<section id="commandCell">
				<button type="button" class="btn btn-default" data-toggle="modal" data-target="#${article.NNUM}" title="수정">수정</button>&nbsp;&nbsp;
				           <div class="modal fade" id="${article.NNUM}" role="dialog">
           <div class="modal-dialog">
           <!-- Modal content-->
           <div class="modal-content">
           <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title"></h4>
           </div>
           <div class="modal-body">
                                정말로 수정 하시겠습니까?
               </div>   
               <div class="modal-footer">
                 <button type="button" onclick="javascript:modifyboard()" class="btn btn-secondary btn" title="수정">수정</button>
				<button type="button" class="btn btn-secondary btn" data-dismiss="modal" title="취소">취소</button>
                 
			</div>
		</div>
 	</div>
</div>
				<a href="javascript:history.go(-1)" class="btn btn-default">뒤로가기</a>
			</section>
		</form>
	</section>
	
	        <%-- bmp 파일 Check --%>
<div id="bmpCheck" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="color: #000;"></h5>
                </div>
            <div class="modal-body" style="text-align:center;">
                <p>BMP 파일은 웹상에서 사용하기에 적절한 이미지 포맷이 아닙니다. <p>
                <p>그래도 계속하시겠습니까?</p>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
            <button type="button" class="btn btn-secondary btn" data-dismiss="modal" title="취소" onclick="return false;">취소</button>             
            </div>
        </div>
    </div>
</div>

<%-- img 파일 Check --%>
<div id="imgCheck" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="color: #000;"></h5>
            </div>
            <div class="modal-body" style="text-align:center;">
                <p>이미지 파일만 선택할 수 있습니다.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../main/mycarFooter.jsp"></jsp:include>
</body>
</html>