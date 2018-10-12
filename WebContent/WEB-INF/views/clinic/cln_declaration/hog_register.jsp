<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Plato - Clean responsive bootstrap website template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Clean responsive bootstrap website template">
<meta name="author" content="">

<!-- styles -->

<link href="http://localhost:8080/mkjg/clinic/assets/css/bootstrap.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/css/bootstrap-responsive.css" rel="stylesheet">

<link href="http://localhost:8080/mkjg/clinic/assets/css/docs.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/css/flexslider.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/css/refineslide.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/css/font-awesome.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/css/animate.css" rel="stylesheet">


<link href="http://localhost:8080/mkjg/clinic/assets/css/style.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/clinic/assets/color/default.css" rel="stylesheet">

<!-- fav and touch icons -->
<link rel="shortcut icon" href="http://localhost:8080/mkjg/clinic/aassets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
	
	
 	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
 	<link rel="stylesheet" href="http://localhost:8080/mkjg/clinic/assets/css/bootstrap-datepicker3.min.css">

	<style type="text/css">
		#cusId{background-color: #F5F5F5; height: 30px;}
		#cusName{background-color: #F5F5F5; height: 30px;}
		#petName{background-color: #F5F5F5; height: 30px;}
		#phone{background-color: #F5F5F5; height: 30px;}
		#date{background-color: #F5F5F5; height: 30px;}
		#reason{background-color: #F5F5F5;}
	</style>
	
	<script type="text/javascript">
	
	$(function(){
		
	    
	    $("#date").datepicker({
	        calendarWeeks: true,
	        todayHighlight: true,
	        autoclose: true,
	        format: 'yyyy-mm-dd'
	    });  
	    
		$("#add").click(function(){
	var chkId =/^[a-z][a-z\d]{3,20}$/
	var chkName=/^[가-힝]{2,10}$/
	var chkPetName=/^[가-힝a-z]{1,10}$/
	var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	
	
	if($("#cusId").val() == ""){
		alertCenter("#cusId", "#Alert", "아이디를 입력해주세요.");
		return;
	}else if( !chkId.test( $("#cusId").val() )){
		alertCenter("#cusId", "#Alert", "아이디는 영문 소문자 혹은 소문자와 숫자 혼합으로 3~20자 입력해주세요");
		return;
    }//end else if
    
	if($("#cusName").val() == ""){
		alertCenter("#cusName", "#Alert", "이름을 입력해주세요.");
		return;
	}else if( !chkName.test( $("#cusName").val() )){
		alertCenter("#cusName", "#Alert", "이름은 최소 2자 한글로만 작성해주세요.");
		return;
    }//end else if
    
	if($("#petName").val() == ""){
		alertCenter("#petName", "#Alert", "애완동물의 이름을 입력해주세요.");
		return;
	}else if( !chkPetName.test( $("#petName").val() )){
		alertCenter("#petName", "#Alert", "애완동물의 이름을 확인해주세요");
		return;
    }//end else if
	
	if($("#phone").val() == ""){
		alertCenter("#phone", "#Alert", "핸드폰 번호를 입력해주세요.");
		return;
	}else if( !chkPhone.test( $("#phone").val() )){
		alertCenter("#phone", "#Alert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
		return;
    }//end else if
    
	if($("#reason").val() == ""){
		alertCenter("#reason", "#Alert", "사유를 작성해주세요");
		return;
	}//end if
    
    
	});//click
	

	
}); //ready



function alertCenter(id, alertId, msg){
	$(id).focus();
	$(alertId).html(msg);
	$(alertId).css("color","#FF0000");
	$(alertId).fadeOut(1000).fadeIn(1000).fadeOut(1000).fadeIn(1000).fadeOut(1000)
	$(alertId).focus();
}//alertCenter
	
	</script>

</head>

<body>
	<header>
		<!-- Navbar
    ================================================== -->
		<div class=" cbp-af-header">
			<div class=" cbp-af-inner">
				<div class="container">
					<div class="row">

						<div class="span4">
							<!-- logo -->
							<a class="logo" href="index.html">
								<h1>Plato</h1> <!-- <img src="assets/img/logo.png" alt="" /> -->
							</a>
							<!-- end logo -->
						</div>

						<div class="span8">
							<!-- top menu -->
							<div class="navbar">
								<div class="navbar-inner">
									<nav>
										<ul class="nav topnav">
											<li class="dropdown"><a href="index.html">Home</a></li>
											<li class="dropdown"><a href="index.html">실시간 상담</a></li>
											<li class="dropdown active"><a href="index.html">신고관리</a></li>
											<li class="dropdown"><a href="#">이용관리</a>
												<ul class="dropdown-menu">
													<li><a href="">모니터링</a></li>
													<li><a href="">예약관리</a></li>
													<li><a href="">이용내역</a></li>
													</ul></li>
											<li class="dropdown"><a href="#">문의답변</a>
												<ul class="dropdown-menu">
													<li><a href="">사용자 문의답변</a></li>
													<li><a href="">관리자 문의답변</a></li>
											</ul></li>
											<li class="dropdown"><a href="#">업체관리</a>
												<ul class="dropdown-menu">
													<li><a href="http://localhost:8080/mkjg/clinic/cln_company_manage/employee/employee_list.jsp">직원관리</a></li>
													<li><a href="">병원정보 관리</a></li>
													<li><a href="">사업자 업체등록</a></li>
											</ul></li>
											<li class="dropdown"><a href="index.html">공지사항</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- end menu -->
						</div>

					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Subhead
================================================== -->
<section id="subintro">
    <div class="container">
      <div class="row">
        <div class="span4">
          <h3>MKJG<strong> 신고관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">신고관리<span class="divider">/</span></li>
            <li class="active">신고등록</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="span12">
         <div class="page-header">
              <h3>신고등록</h3>
            </div>
          
          <div class="controls docs-input-sizes" style="margin-left: 300px;">
          <table>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객아이디" id="cusId" name="cusId" maxlength="20"><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객명" id="cusName" name="cusName" maxlength="10"><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="애완동물이름" id="petName" name="petName" maxlength="10"><br/>
            </td>
          </tr>
          <tr>
          	<td>
                <input class="input-xxlarge" type="text" placeholder="전화번호" id="phone" name="phone" maxlength="13"><br/>
            </td>
           </tr>
           <tr>
          	<td>
               <input type="text" class="form-control" id="date" name="id" placeholder="날짜" readonly="readonly" style="display: inline-block;">
               <br/><br/>
            </td>
           </tr>
           <tr>
          	<td>
                <textarea name="reason" rows="10" cols="35" maxlength="1000" style="width: 530px;" id="reason" placeholder="사유"></textarea>
           </td>
           </tr>
           <tr>
           <td>
           <span id="Alert" style="font-size: 20px;"></span>
           </td>
           </tr>
          
          <tr>
          <td style="text-align: center;">
          <br/><br/>
           <button type="button" class="btn btn-inverse" id="add">신청</button>
           <button type="button" class="btn btn-inverse" id="back">목록</button><br/>
          </td>
          </tr>
                </table>
           </div>
            
          
	</div>
	</div>
	</div>
	</section>

	<!-- Footer
 ================================================== -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="span3">
					<div class="widget">
						<!-- logo -->
						<div class="footerlogo">
							<h6>
								<a href="index.html">Plato</a>
							</h6>
							<!-- <img src="assets/img/logo.png" alt="" /> -->
						</div>
						<!-- end logo -->
						<address>
				<strong>SIST 쌍용교육센터</strong><br>
				 서울특별시 강남구 테헤란로 132(역삼동) <br>
				한독약품빌딩 8층<br>
				<abbr title="Phone">Tel:</abbr> 02)3482-4632~5 </address>
					</div>
				</div>
				<div class="span3">
					<div class="widget">
						<h5>Browse pages</h5>
						<ul class="list list-ok">
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
							<li><a href="#">Tamquam ponderum at eum, nibh dicta
									offendit mei</a></li>
							<li><a href="#">Vix no vidisse dolores intellegam</a></li>
							<li><a href="#">Est virtute feugiat accommodare eu</a></li>
						</ul>
					</div>
				</div>
				<div class="span3">
					<div class="widget">
						<h5>Flickr photostream</h5>
						<div class="flickr_badge">
							<script type="text/javascript"
								src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="span3">
					<div class="widget">
						<h5>Keep updated</h5>
						<p>Enter your email to subcribe newsletter</p>
						<form>
							<div class="input-append">
								<input class="span2" id="appendedInputButton" type="text">
								<button class="btn btn-color" type="submit">Subscribe</button>
							</div>
						</form>
						<ul class="social-network">
							<li><a href="#"><i
									class="icon-bg-light icon-facebook icon-circled icon-1x"></i></a></li>
							<li><a href="#" title="Twitter"><i
									class="icon-bg-light icon-twitter icon-circled icon-1x"></i></a></li>
							<li><a href="#" title="Linkedin"><i
									class="icon-bg-light icon-linkedin icon-circled icon-1x"></i></a></li>
							<li><a href="#" title="Pinterest"><i
									class="icon-bg-light icon-pinterest icon-circled icon-1x"></i></a></li>
							<li><a href="#" title="Google plus"><i
									class="icon-bg-light icon-google-plus icon-circled icon-1x"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="subfooter">
			<div class="container">
				<div class="row">
					<div class="span6">
						<p>&copy; Plato - All right reserved</p>
					</div>
					<div class="span6">
						<div class="pull-right">
							<div class="credits">
								<!--
                  All the links in the footer should remain intact.
                  You can delete the links only if you purchased the pro version.
                  Licensing information: https://bootstrapmade.com/license/
                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Plato
                -->
								Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

  <script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/modernizr.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.easing.1.3.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/google-code-prettify/prettify.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/bootstrap.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.prettyPhoto.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/portfolio/setting.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/hover/jquery-hover-effect.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.flexslider.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/classie.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/cbpAnimatedHeader.min.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.refineslide.js"></script>
  <script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.ui.totop.js"></script>
  <script type='text/javascript' src="http://localhost:8080/mkjg/clinic/assets/js/bootstrap-datepicker.min.js"></script>
  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/clinic/assets/js/custom.js"></script>

</body>

</html>
