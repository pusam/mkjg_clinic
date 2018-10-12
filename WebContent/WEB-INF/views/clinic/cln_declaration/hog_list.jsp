<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Plato - Clean responsive bootstrap website template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700"
	rel="stylesheet">

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
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
   
	<script type='text/javascript'>
	
	$(function(){
		$('.input-daterange').datepicker({
  			 autoclose: true
  			 ,format: 'yyyy-mm-dd'
		});
	});

</script>
	
	
	<style type="text/css">
	#startDate{background-color: #F5F5F5;}
	#endDate{background-color: #F5F5F5;}
	#appendedInputButton{background-color: #F5F5F5;}
	</style>
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
								<h1>Plato</h1>
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
            <li class="active">목록</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
<section id="maincontent">
 <div class="container">
     <div class="row">
     <div class="span12">
		 <section id="tables" class="doc">
            <div class="page-header">
              <h3>목록</h3>
            </div>
            <div class="input-daterange input-group" id="datepicker" style="float: left;">
   				 <input type="text" class="input-sm form-control" name="startDate"  id="startDate" placeholder="시작날짜" style="display: inline-block;"/>
    		    &nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;
  			     <input type="text" class="input-sm form-control" name="endDate"  id="endDate" placeholder="끝날짜" style="display: inline-block;"/>
			</div>
            <div class="input-append" style="float: right;">
            		<select name="status" id="status" style="width: 150px; font-size: 14px; margin-right: 70px">
						<option selected="selected" style="line-height: 25px; border: 1px solid #6093e7; margin-bottom: 20px; height: 28px; border-radius: 3px"> 등록완료</option>
						<option>처리대기</option>
						<option>관리자거절</option>
					</select>
        	    <input class="span2" id="appendedInputButton" type="text"  placeholder="이름">
					<button class="btn btn-inverse" type="submit" id="search">검색</button>
            </div>
              <table class="table table-hover">
                <thead>
                  <tr style="font-size: 16px;">
						<th width="50px">번호</th>
						<th width="80px">고객번호</th>
						<th width="120px">고객명</th>
						<th width="120px">애완동물 이름</th>
						<th width="150px">전화번호</th>
						<th width="130px">최근 이용 날짜</th>
						<th width="100px">처리결과</th>
				</tr>
                </thead>
                <tbody>
                  	<tr>
						<td>1</td>
						<td>C_00000001</td>
						<td>temp1</td>
						<td>dog1</td>
						<td>000-3331-5555</td>
						<td>2018.08.01</td>
						<td>등록완료</td>
					</tr>
					<tr>
						<td>2</td>
						<td>C_00000002</td>
						<td>temp2</td>
						<td>dog2</td>
						<td>000-1122-5555</td>
						<td>2018.08.01</td>
						<td>등록완료</td>
					</tr> 
					<tr>
						<td>1</td>
						<td>C_00000003</td>
						<td>temp3</td>
						<td>dog3</td>
						<td>000-1111-5555</td>
						<td>2018.08.01</td>
						<td>등록완료</td>
					</tr> 
                </tbody>
              </table>
            <div class="pagination" style="text-align: center;">
            <ul>
              <li><a href="#">Prev</a></li>
              <li><a href="#">1</a></li>
              <li class="active"><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">Next</a></li>
            </ul>
          </div>
             <div style="float: right;">
            	<button type="button" class="btn btn-inverse" id="add">추가</button>
              </div>
          </section>
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
	 <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/clinic/assets/js/custom.js"></script>

</body>

</html>
