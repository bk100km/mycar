<%@page import="car.bean.CarBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>

<%
	CarBean car = (CarBean)request.getAttribute("car");
    String nowPage = (String)request.getAttribute("page");
%>

<!DOCTYPE html>
<html>
<head>
 <title>Mycar 렌터카</title>
 
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard-dynamic-subset.css" class="svelte-p5qu1m" data-svelte="svelte-1yifjfe">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style>
body {
    font-family: pretendard;
    font-size: 14px;
    
    color: #333;
    background-color: #fff;
}
.btn-default {
    color: #fff !important;
    background-color: #1e1a1b !important;
    border-color: #1e1a1b !important;
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
<body><jsp:include page="/view/main/mycarAdHeader.jsp"></jsp:include>
	<div class="container"style="text-align: center; margin-top:2%; margin-bottom:2%;">
    <h2>상품 등록</h2>
    
    <form class="form-horizontal" id ="InsertForm" role="form" action="carAdInsert.ca" method="POST" enctype="multipart/form-data" name = "carform">
                 <div id="legend"style="text-align: center;">
    
                <div class="form-group" style="text-align: center;">
                    <label for="cCode"class="col-sm-4 control-label" title="코드" >코드 :</label>
                    <div class="col-sm-4" style="text-align: center;">
                  <input type="text" name="CarCode" class="form-control" id="cCode" required="required" Autofocus />
                    </div>
                </div>
                <div class="form-group">
                    <label for="cType" class="col-sm-4 control-label" title="장기/단기">장기/단기 :</label>
                    <div class="col-sm-4">
                        <input name="CarType" type="text" class="form-control" id="cType" required="required" /></div>
                </div>
                 <div class="form-group">
                    <label for="cSize" class="col-sm-4 control-label" title="차량 크기">차량 크기 :</label>
                    <div class="col-sm-4">
                       <input name="CarSize" type="text" class="form-control" id="cSize" required="required" />
                       </div>
                </div>
                 <div class="form-group">
                    <label for="cName" class="col-sm-4 control-label" title="차종">차 종 :</label>
                    <div class="col-sm-4">
                        <input name="CarName" type="text" class="form-control" id="CName" required="required" /></div>
                </div>
                <div class="form-group">
                    <label for="cPrice" class="col-sm-4 control-label" title="가격">가격 :</label>
                    <div class="col-sm-4">
                        <input name="CarPrice" type="text" class="form-control" id="cPrice" required="required" /></div>
                </div>
                <div class="form-group">
                    <label for="cGear" class="col-sm-4 control-label" title="기어">기어 :</label>
                    <div class="col-sm-4">
                         <input name="CarGear" type="text" class="form-control" id="cGear" required="required" /></div>
                </div>
                <div class="form-group">
                    <label for="cFuel" class="col-sm-4 control-label" title="연료">연료 :</label>
                    <div class="col-sm-4">
                        <input name="CarFuel" type="text" class="form-control" id="cFuel" required="required" /></div>
                </div>
                <div class="form-group">
                    <label for="cSeat" class="col-sm-4 control-label" title="승차인원">승차인원  :</label>
                    <div class="col-sm-4">
                        <input name="CarSeat" type="text" class="form-control" id="cSeat" required="required" /></div>
                </div>
                <div class="form-group">
                    <label for="cFile" class="col-sm-4 control-label" title="차량사진">차량 사진첨부 :</label>
                    <div class="col-sm-4">
                         <input name="CarFile" type="file" class="form-control" onchange = "fileCheck(this)"
			              accept="image/gif, image/jpeg, image/png" id="cFile" required="required" />
                    </div>
                </div>
                 </div>
                     <input name="page" type="hidden" id="page" value="${param.page}"  />
                    
            </form> <!-- /form -->
            </div>
                 <div id="FunctionButton" style="text-align: center;">
                 <button type="submit" class="btn btn-default" form="InsertForm" title="등록" >등록</button>
                 <button type="reset" class="btn btn-default" form="InsertForm" title="다시쓰기">다시 쓰기</button>
                 <a href="carAdSearchList.ca?page=${param.page}"><button class="btn btn-default" title="상품 리스트"> 상품 리스트</button></a>
                 </div>
                 
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