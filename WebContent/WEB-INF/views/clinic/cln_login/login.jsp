<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Plato - Clean responsive bootstrap website template</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Clean responsive bootstrap website template">
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
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
/* 	$("#login").click(function() {
		var obj = document.frm;
		var id = obj.id.value;
		var pass =obj.pass.value;
		$("#frm").submit();
	});*/
		$("#login").click(function() {
			$("#frm").submit();
		});//click
});//ready
</script>
<style type="text/css">
#headerDiv{ margin: auto 0px; height: 250px; margin-bottom: 20px;}
#cId{width: 400px; height: 50px; margin: auto 0px; margin-bottom: 20px; border:  1px solid #BDBDBD}
#pass{width: 400px; height: 50px; margin: auto 0px; margin-bottom: 20px; border: 1px solid #BDBDBD}
#login{width: 410px; height: 70px; margin: auto 0px; margin-bottom: 20px;}
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
							<a class="logo" href="index.do">
								<h1>Plato</h1> <!-- <img src="assets/img/logo.png" alt="" /> -->
							</a>
							<!-- end logo -->
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
          <h3><strong> 로그인 </strong></h3>
        </div>
      </div>
    </div>

  </section>
  <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="centered">
            <div id="headerDiv">
				<img src="http://localhost:8080/mkjg_clinic/assets/img/dog.gif" style="width: 600px; height: 250px;"/>
				</div>
				<div id="containerDiv">
				<form action="index.do" method="post" name="frm" id="frm">
				<input type="radio" id="check" name="check" value="ceo" checked="checked">사업자&nbsp;&nbsp;&nbsp;
				<input type="radio" id="check" name="check" value="emp">직원<br/><br/>
				<input type="text" placeholder="아이디" id="cId" name="cId" class="input-xxlarge"><br/>
				<input type="password" placeholder="비밀번호" id="pass" name="pass" class="input-xxlarge"><br/>
				<input type="button" value="로그인" id="login" class="btn btn-inverse">
				</form>
             	</div>
             	<div>
				<a href="#">아이디 찾기</a> |
				<a href="#">비밀번호 찾기</a> |
				<a href="join.do">회원가입</a>
				</div>
          </div>
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
