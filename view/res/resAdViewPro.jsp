<%@page import="res.bean.ResBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@page import="res.bean.PageInfo"%>
<%
	ResBean resAdView = (ResBean) request.getSession().getAttribute("resAdView");
	String nowPage = (String)request.getAttribute("page");
%>    
<!DOCTYPE html>
<html>

<head>
 <title>Mycar 렌터카</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
h2 {
    margin-top: 50px;
    margin-bottom: 50px;
}
	.form-horizontal .form-group {
    margin-right: 0;
    margin-left: 0;
}
.btn-default {
    color: #f5f5f5 !important;
    background-color: #1e1a1b !important;
    border-color: #1e1a1b !important;
}
</style>
<script type="text/javascript">
	$(function(){
		$("#modifyform").submit(function(){
	        var start = $('#rstart').val();
	        var end = $('#rend').val();

	        var startArray = start.split('-');
	        var endArray = end.split('-');   

	        var startDate = new Date(startArray[0], startArray[1], startArray[2]);
	        var endDate = new Date(endArray[0], endArray[1], endArray[2]);

 	        if(startDate.getTime() > endDate.getTime()) {
	            alert("예약종료일을 확인해주십시오.");
	            return false;
	        }
	     });
	});
</script>
</head>

<body><jsp:include page="../main/mycarAdHeader.jsp"></jsp:include>

  <div class="container text-center">    
  <h2>예약 정보 수정</h2>
  <br>
  <div class="row">
    <div class="col-sm-6">
    &nbsp;<br/>&nbsp;<br/>&nbsp;<br/>&nbsp;<br/>&nbsp;<br/>
    <div class="form-group">
    <div>
    <img>
    <img src="image/${resAdView.cfile}" width="105%" alt =" 상품정보" title="차량 아이콘" id="imgstyle">
    </div>
    </div>
    </div>
	
	<div class="col-sm-6">
    <div class="well"  style="background-color: #FFFFFF;">

   <form class="form-horizontal" role="form" action="resAdUpdateAction.re?rnum=${resAdView.rnum}&page=${nowPage}" method="POST" name = "modifyform" id="modifyform">

                <div class="form-group" style="text-align: center;">
                    <label for="rnum"class="col-sm-4 control-label" >예약 번호 :</label>
                    <div class="col-sm-6" style="text-align: center;">
                 		<input type="text" id="rnum" name="rnum" class="form-control" value="${resAdView.rnum}" required readonly>
                    </div>
                </div>
                <div class="form-group" style="text-align: center;">
                    <label for="MID"class="col-sm-4 control-label" >아  이  디 :</label>
                    <div class="col-sm-6" style="text-align: center;">
                 <input type="text" id="rid" name="rid" class="form-control" value="${resAdView.rid}" required readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="mname" class="col-sm-4 control-label">고  객  명 :</label>
                    <div class="col-sm-6">
                        <input type="text" id="mname" name="mname" class="form-control"  value="${resAdView.mname}" required readonly>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="mhp" class="col-sm-4 control-label">연  락  처 : </label>
                    <div class="col-sm-6">
                        <input type="text" id="mhp" name="mhp" value="${resAdView.mhp}" class="form-control" required readonly>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="mlic" class="col-sm-4 control-label">면허 정보 :</label>
                    <div class="col-sm-6">
                        <input type="text" id="mlic" name="mlic"  class="form-control" value="${resAdView.mlic}" required readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ccode" class="col-sm-4 control-label">예약 차량 :</label>
                    <div class="col-sm-6">
                        <input type="text" id="rcode" name="rcode"  class="form-control" value="${resAdView.rcode}"  required readonly>
                    </div>
                </div>

 				<div class="form-group">
                    <label for="rtotal" class="col-sm-4 control-label">예약료(일) :</label>
                    <div class="col-sm-6">
                        <input type="text" id="cprice" name="cprice" class="form-control" value="${resAdView.cprice}"  required readonly>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="rtotal" class="col-sm-4 control-label">총  예약금액 :</label>
                    <div class="col-sm-6">
                        <input type="text" id="rtotal" name="rtotal" class="form-control" value="${resAdView.rtotal}"  required readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label for="rstart" class="col-sm-4 control-label">예약시작일 :</label>
                    <div class="col-sm-6">
                        <input type="date" id="rstart" name="rstart"  class="form-control" value="${resAdView.rstart}" autofocus required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-4 control-label">예약종료일  :</label>
                    <div class="col-sm-6">
                        <input type="date" id="rend" name="rend"class="form-control" value="${resAdView.rend}" autofocus required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="rtotal" class="col-sm-4 control-label">예약 상태 :</label>
                    <div class="col-sm-6">
                        <input type="text" id="rcancel" name="rcancel" class="form-control" value="${resAdView.rcancel}"  required >
                    </div>
                </div>
                
	
              <button type="button" onclick="location.href='resAdSearchAction.re?rnum=${resAdView.rnum}&page=${nowPage}'"class="btn btn-default" title="목록으로 돌아가기">목록으로</button>           
			<button type="button" class="btn btn-default" data-toggle="modal" data-target="#modify" title="수정">수정</button>
	
           <div class="modal fade" id="modify" role="dialog">
           <div class="modal-dialog">
           <!-- Modal content-->
           <div class="modal-content">
           <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title"></h4>
           </div>
           <div class="modal-body" style="text-align: center;">
                                정말로 수정 하시겠습니까?
               </div>   
               <div class="modal-footer">
                 <button type="submit" onclick="modifyform.submit();" class="btn btn-secondary" title="수정" >수정</button>
                 <button type="button" class="btn btn-secondary btn" data-dismiss="modal" title="취소">취소</button>
			</div>
		</div>
 	</div>
</div>
	</form>
	</div>
	</div>
	</div>
	</div>
	

		
<jsp:include page="../main/mycarFooter.jsp"></jsp:include>
</body>
</html>