<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<link href="http://localhost:8080/mkjg_clinic/assets/css/bootstrap.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/css/bootstrap-responsive.css" rel="stylesheet">

<link href="http://localhost:8080/mkjg_clinic/assets/css/docs.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/css/flexslider.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/css/refineslide.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/css/font-awesome.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/css/animate.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700"
	rel="stylesheet">

<link href="http://localhost:8080/mkjg_clinic/assets/css/style.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg_clinic/assets/color/default.css" rel="stylesheet">

<!-- fav and touch icons -->
<link rel="shortcut icon" href="http://localhost:8080/mkjg_clinic/aassets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>
	<header>
		<!-- Navbar
    ================================================== -->
		<c:import url="/WEB-INF/views/clinic/common/header.jsp"/>
	</header>
	<!-- Subhead
================================================== -->
<section id="subintro">
    <div class="container">
      <div class="row">
        <div class="span4">
          <h3>mkjg_clinic<strong> 이용관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">이용관리<span class="divider">/</span></li>
            <li class="active">모니터링 목록</li>
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
              <h3>모니터링 목록</h3>
            
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
					<th width="100px">고객명</th>
					<th width="100px">전화번호</th>
					<th width="100px">동물명</th>
					<th width="100px">동물종류</th>
					<th width="120px">이용날짜</th>
					<th width="120px">내용</th>
					<th width="120px">등록이</th>
				</tr>
                </thead>
                <tbody>

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
          </section>
	</div>
	</div>
	</div>
	</section>

	<!-- Footer
 ================================================== -->
	<footer class="footer">
		<c:import url="/WEB-INF/views/clinic/common/footer.jsp"/>
	</footer>

  <script src="http://localhost:8080/mkjg_clinic/assets/js/jquery.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/modernizr.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/jquery.easing.1.3.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/google-code-prettify/prettify.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/bootstrap.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/jquery.prettyPhoto.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/portfolio/setting.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/hover/jquery-hover-effect.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/jquery.flexslider.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/classie.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/cbpAnimatedHeader.min.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/jquery.refineslide.js"></script>
  <script src="http://localhost:8080/mkjg_clinic/assets/js/jquery.ui.totop.js"></script>

  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg_clinic/assets/js/custom.js"></script>

</body>

</html>
