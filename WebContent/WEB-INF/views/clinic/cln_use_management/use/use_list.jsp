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
              <h3>이용 목록</h3>
            </div>
            
            <div class="input-append" style="float: right;">
            		<select name="status" id="status" style="width: 150px; font-size: 14px; margin-right: 70px">
						<option>고객명</option>
						<option>전화번호</option>
						<option>이용날짜</option>
					</select>
        	    <input class="span2" id="appendedInputButton" type="text"  placeholder="이름">
					<button class="btn btn-inverse" type="submit" id="search">검색</button>
            </div>
              <table class="table table-hover">
                <thead>
                  <tr style="font-size: 16px;">
						<th width="50px">번호</th>
						<th width="120px">고객명</th>
						<th width="150px">전화번호</th>
						<th width="130px">동물이름</th>
						<th width="100px">종류</th>
						<th width="100px">이용날짜</th>
				</tr>
                </thead>
                <tbody>
               		<c:forEach var="uhl" items="${use_history_list }">
					<tr>
						<td>${uhl.num }</td>
						<td>${uhl.pname }</td>
						<td>${uhl.tel }</td>
						<td>${uhl.pet_name }</td>
						<td>${uhl.pet_type }</td>
						<td>${uhl.bdate }</td>
					</tr>
					</c:forEach>
                </tbody>
              </table>
            <div class="pagination" style="text-align: center;">
            <ul>
              ${use_history_index }
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
