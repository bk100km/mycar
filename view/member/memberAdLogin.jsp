<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Mycar 렌터카</title>
   
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'> 
<link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'><link rel="stylesheet" href="./bootStrapLogin/dist/style.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard-dynamic-subset.css" class="svelte-p5qu1m" data-svelte="svelte-1yifjfe">

<style>
body {
    font-family: Pretendard !important;
    color: #0a212c;
    background-color: white;
    overflow-x: hidden;
}
.card-front {
	background-color: white !important;
	border-color: #0a212c !important; 
	background-image: url()!important;
}
.form-style {
    background-color: #ffffff;
    color: black;
}
.btn {
    color: white !important;
    background-color: #0a212c !important;
}
h1 {
	font-family: tahoma !important;
    font-size: 5rem !important;
    height: 0px !important;
    font-weight: bold !important;
}
.input-icon {
    color: #0a212c !important;
}
#mycarLogo {
	color: #0a212c !important;
}
.full-height {
    min-height: 85vh !important;
}
.card-3d-wrap {
    margin-top: 80px !important;
}
#center {
    margin-top:0px !important;
}
</style>

</head>
<body>
<!-- partial:index.partial.html -->

     
<form name="loginform"action="./memberAdLoginAction.me" method="post" role="form" class="php-email-form">
	<div class="section">
		<div class="container">
		
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
					<div>
					  <h1><a href="http://localhost:8080/mycar/admin.me" id=mycarLogo>MyCar</a></h1>
					</div>
						
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">관리자 로그인</h4>
											<div class="form-group">
												
												<input type="text" name="MID" class="form-style" id="MID"  placeholder="아이디" required>
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" class="form-style" name="MPW" id="MPW" placeholder="비밀번호"  required>
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											 <button type="submit" class="btn mt-4"href="javascript:loginform.submit()">로그인</button>
											<!--  <a href="#" class="btn mt-4">submit</a>-->
                            				
				      					</div>
			      					</div>
			      				</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
	</div>
	</div>
<!-- partial -->
  <script  src="./script.js"></script>
 </form>
 
 
 <jsp:include page="../main/mycarFooter.jsp"></jsp:include>
</body>

</html>
