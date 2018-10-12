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
		th{
		height: 15px; text-align: center; font-size: 20px;
		}
		td,tr{
		border-bottom: 1px solid #6093E7;  vertical-align: middle; text-align: center;
		font-size: 16px; font-family: 맑은 고딕; font-weight: bold;
		}
		#searchDate1{
		height: 37px;
		}
		#searchDate2{
		height: 37px;
		}
		#status{
		height: 37px;
		}
		#searchID{
		height: 37px;
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
										<h2>진상관리</h2>
										<div>
											<div class="box">
												<input type="text" name="searchDate1" id="searchDate1"  class="inputBox"> 
												<a href=""><img src="http://localhost:8080/mkjg/clinic/images/search.png" style="height: 20px;"></a>
												&nbsp;&nbsp;
												- 
												&nbsp;&nbsp;
												<input type="text" name="searchDate2" id="searchDate2"  class="inputBox">
												<a href=""><img src="http://localhost:8080/mkjg/clinic/images/search.png" style="height: 20px;"></a>
												
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												
												<select name="status" id="status" style="height: 39px; width: 150px; font-size: 14px">
												<option selected="selected" style="line-height: 25px; border: 1px solid #6093e7; margin-bottom: 20px; height: 28px; border-radius: 3px"> 등록완료</option>
												<option>처리대기</option>
												<option>관리자거절</option>
												</select>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="text" name="searchName" id="searchName" placeholder="이름입력"  class="inputBox">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button"  name="searchEmploye" id="searchEmploye" value="찾기" class="btn"/><br/>
											</div>
										</div>
									</header>
									<br/>
									<table class="table">
									<tr>
										<th width="50px">번호</th>
										<th width="80px">고객번호</th>
										<th width="120px">고객명</th>
										<th width="120px">애완동물 이름</th>
										<th width="150px">전화번호</th>
										<th width="130px">최근 이용 날짜</th>
										<th width="100px">처리결과</th>
									</tr>
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
									</table>
									<div style="margin-top: 10px; text-align: center">
										[ 1 ] [ 2 ] [ 3 ]
									<span style="float:right">	<input type="button" value="추가" name="addEmploye" id="addEmploye" class="btn"/></span>
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