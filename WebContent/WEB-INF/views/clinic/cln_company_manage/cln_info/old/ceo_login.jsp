<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Arcana by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>No Sidebar - Arcana by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="http://localhost:8080/mkjg/clinic/assets/css/main.css" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<style type="text/css">
		#home{
		width: 200px; height: 100px; background-color: #595959; font-size: 30px;
		}
		#list{
		width: 200px; height: 100px; background-color: #58B6DF; font-size: 30px;
		}
		table{
		width: 300px;
		position: relative;
		left:530px;
		height: 100px;
		}
		
		</style>
	<script type="text/javascript">
	$(function(){
		$("#login").click(function(){
			
			if($("#id").val() == ""){
				alertCenter("#id", "#idAlert", "아이디를 입력해주세요.");
				return;
			}//end if
			
			if($("#pass").val() == ""){
				alertCenter("#pass", "#passAlert", "비밀번호를 입력해주세요.");
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
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="http://localhost:8080/mkjg/clinic/main/main.jsp" id="logo"><em> 맡 겨 주 개 </em></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="http://localhost:8080/mkjg/clinic/main/main.jsp">HOME</a></li>
								<li><a href="">실시간 상담</a></li>
								<li>
									<a href="#">이용관리</a>
									<ul>
										<li><a href="#">모니터링</a></li>
										<li><a href="#">예약관리</a></li>
										<li><a href="#">이용내역</a></li>
									</ul>
								</li>
								<li><a href="http://localhost:8080/mkjg/clinic/cln_declaration/hog_list.jsp">신고관리</a></li>
								<li>
									<a href="#">문의답변</a>
									<ul>
										<li><a href="#">사용자 문의답변</a></li>
										<li><a href="#">관리자 문의답변</a></li>
									</ul>
								</li>
								<li>
									<a href="#">업체관리</a>
									<ul>
										<li><a href="http://localhost:8080/mkjg/clinic/cln_company_manage/employee/employee_list.jsp">직원관리</a></li>
										<li><a href="#">사업자 정보관리</a></li>
										<li><a href="#">사업자 업체 등록</a></li>
									</ul>
								</li>
								<li><a href="http://localhost:8080/mkjg/clinic/cln_notice/notice.jsp">공지사항</a></li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div id="content">
							<!-- Content -->
								<article>
									<header>
										<h2>사업자 정보</h2>
									</header>
									<br/>
									<div style="text-align: center">
									<img src="http://localhost:8080/mkjg/clinic/images/warning.png">
									<br/><br/>
									<div style="font-size: 40px; font-weight: bold;">
										<p>사업자 계정으로 로그인해주십시오.</p>
									</div>
									<table>
									<tr>
										<td><input type="text" placeholder="아이디" id="id" maxlength="20" style="width:250px;"/></td>
										<td rowspan="2" style="vertical-align: middle; padding-right: 30px"><input type="button" value="로그인" id="login" style="height: 100px"/></td>
									</tr>
									<tr>
										<td><input type="password" placeholder="비밀번호" id="pass" maxlength="20" style="width:250px;">	</td>
									</tr>
									<tr>
										<td><span id="idAlert"></span><span id="passAlert"></span>	</td>
									</tr>
								</table>
									</div>
									<br/><br/><br/><br/><br/><br/>
								</article>
						</div>
					</div>
				</section>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>Links to Stuff</h3>
								<ul class="links">
									<li><a href="#">Mattis et quis rutrum</a></li>
									<li><a href="#">Suspendisse amet varius</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
								</ul>
							</section>
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>More Links to Stuff</h3>
								<ul class="links">
									<li><a href="#">Duis neque nisi dapibus</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
									<li><a href="#">Rutrum accumsan sed</a></li>
								</ul>
							</section>
							<section class="col-6 col-12-narrower">
								<h3>Get In Touch</h3>
								<form>
								</form>
							</section>
						</div>
					</div>

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li>
							</ul>
						</div>
				</div>
		</div>

		<!-- Scripts -->
			<script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.min.js"></script>
			<script src="http://localhost:8080/mkjg/clinic/assets/js/jquery.dropotron.min.js"></script>
			<script src="http://localhost:8080/mkjg/clinic/assets/js/browser.min.js"></script>
			<script src="http://localhost:8080/mkjg/clinic/assets/js/breakpoints.min.js"></script>
			<script src="http://localhost:8080/mkjg/clinic/assets/js/util.js"></script>
			<script src="http://localhost:8080/mkjg/clinic/assets/js/main.js"></script>

	</body>
</html>