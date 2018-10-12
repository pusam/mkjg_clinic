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
		<style type="text/css">
		table{
		width: 600px;
		position: relative;
		left:300px;
		height: 700px;
		}
		#info{
		width: 120px;
		text-align: left;
		font-weight: bold;
		}
		#input{
		text-align: left;
		}
		#cNum{width: 200px; height: 37px; }
		#cName{width: 200px; height: 37px; }
		#petName{width: 200px; height: 37px; }
		#phone{width: 150px; height: 37px; }
		#date{width: 180px; height: 37px; }
		#reason{
		resize: none; 
		}
		#refuse{
		resize: none; 
		}
		</style>
		
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
										<h2>진상 고객등록</h2>
									</header>
									<br/>
									<div style="height: 800px">
										<div style="float:left">
									<table>
									<tr>
										<td id="info">고객번호</td>
										<td id="input">
											<input type="text" id="cNum" name="cNum" readonly="readonly" maxlength="10" class="inputBox"> 
										</td>
									</tr>
										<tr>
										<td id="info">고객명</td>
										<td id="input">
											 <input type="text" id="cName" name="cName" readonly="readonly" maxlength="10" class="inputBox">
										</td>
									</tr>
										<tr>
										<td id="info">애완동물이름</td>
										<td id="input">
											 <input type="text" id="petName" name="petName" readonly="readonly" maxlength="10" class="inputBox">
										</td>
									</tr>
										<tr>
										<td id="info">전화번호</td>
										<td id="input">
											 <input type="text" id="phone" name="phone" maxlength="13" readonly="readonly" class="inputBox">
										</td>
									</tr>
										<tr>
										<td id="info">날짜</td>
										<td id="input">
											 <input type="text" id="date" name="date" maxlength="13" readonly="readonly" class="inputBox">
										</td>
									</tr>
										<tr>
										<td id="info" style="vertical-align: top">사유</td>
										<td id="input">
											 <textarea name="reason" rows="12" cols="35" maxlength="1000" readonly="readonly" style="width: 470px;" id="reason"> 
											 </textarea>
										</td>
									</tr>
									<tr>
										<td id="info"></td>
										<td style="float: right; position: absolute; top: 700px; left: 500px;">
										<input type="button" id="regi" name="regi" value="뒤로"  class="btn">
										</td>
									</tr>
									</table>
									</div>
									<div  style="float:left">	
									<table>
									<tr>
										<td id="info" style="vertical-align: top">거절사유</td>
										<td id="input">
											 <textarea name="reason" rows="12" cols="35" maxlength="1000" readonly="readonly" style="width: 470px;" id="refuse"> 
											 </textarea>
										</td>
									</tr>
									
									</table>
									</div>
									</div>
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