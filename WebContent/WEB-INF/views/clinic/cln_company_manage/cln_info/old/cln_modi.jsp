<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>No Sidebar - Arcana by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="http://localhost:8080/mkjg/clinic/assets/css/main.css" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
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
		#hName{width: 280px; height: 37px;}
		#ceoNum{width: 200px; height: 37px;}
		#ceoName{width: 200px; height: 37px;}
		#phone{width: 200px; height: 37px;}
		#telNum{width: 200px; height: 37px;}
		#treatment{width: 180px; height: 37px;}
		#beauty{width: 40px; height: 20px;}
		#hosCare{width: 40px; height: 20px;}
		#open{width: 200px; height: 37px;}
		#close{width: 200px; height: 37px;}
		#addr{width: 450px; height: 37px;}
		</style>
		
		<script type="text/javascript">
	$(function(){
		$("#modi").click(function(){
			var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			var storePhone = /^\d{2,3}-\d{3,4}-\d{4}$/;
			var time = /^\d{2}:\d{2}$/;
			
			if($("#phone").val() == ""){
				alertCenter("#phone", "#phoneAlert", "핸드폰 번호를 입력해주세요.");
				return;
			}else if( !chkPhone.test( $("#phone").val() )){
				alertCenter("#phone", "#phoneAlert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
				return;
            }//end else if
			
			if($("#telNum").val() == ""){
				alertCenter("#telNum", "#telNumAlert", " 매장전화번호를 입력해주세요.");
				return;
			}else if( !storePhone.test( $("#telNum").val() )){
				alertCenter("#telNum", "#telNumAlert", "매장전화번호를 확인해주세요. (ex: 02-1111-5555)");
				return;
            }//end else if
            
			
			if($("#treatment").val() == ""){
				alertCenter("#treatment", "#treatmentAlert", " 진료과목을 입력해주세요");
				return;
			}//end if
			
			if($("#open").val() == "" || $("#close").val() == ""){
				alertCenter("#close", "#timeAlert", " 운영시간을 입력해주세요.");
				return;
			}else if( !time.test( $("#open").val() )){
				alertCenter("#close", "#timeAlert", "오픈시간을 확인해주세요. (ex: 12:00)");
				return;
            }else if( !time.test( $("#close").val() )){
				alertCenter("#close", "#timeAlert", "클로즈시간을 확인해주세요. (ex: 20:00)");
				return;
            }//end else if
			
			if($("#addr").val() == ""){
				alertCenter("#addr", "#addrAlert", " 주소를 입력해주세요.");
				return;
			}//end if
			
			if($("#intro").val() == ""){
				alertCenter("#intro", "#introAlert", " 소개글을 입력해주세요.");
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
									<div style="height: 900px">
										<div style="float:left">
									<table>
									<tr>
										<td id="info">업체명</td>
										<td id="input">
											<input type="text" id="hName" name="hName" readonly="readonly" class="inputBox">
											
										</td>
									</tr>
										<tr>
										<td id="info">사업자번호</td>
										<td id="input">
											 <input type="password" id="ceoNum" name="ceoNum" readonly="readonly"  class="inputBox">
										</td>
									</tr>
										<tr>
										<td id="info">대표자명</td>
										<td id="input">
											 <input type="password" id="ceoName" name="ceoName" readonly="readonly" class="inputBox">
										</td>
									</tr>
										<tr>
										<td id="info">전화번호</td>
										<td id="input">
											 <input type="text" id="phone" name="phone" maxlength="13" class="inputBox">
											 <span id="phoneAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">매장전화번호</td>
										<td id="input">
											 <input type="text" id="telNum" name="telNum" maxlength="13" class="inputBox">
											 <span id="telNumAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">진료과목</td>
										<td id="input">
											 <input type="text" id="treatment" name="treatment" maxlength="10" class="inputBox">
											 <span id="treatmentAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">미용유무</td>
										<td id="input">
											 <input type="checkbox" id="beauty" name="beauty" class="checkbox"> 가능
										</td>
									</tr>
										<tr>
										<td id="info">입원유무</td>
										<td id="input">
											 <input type="checkbox" id="hosCare" name="hosCare" class="checkbox"> 가능
										</td>
									</tr>
										<tr>
										<td id="info">운영시간</td>
										<td id="input">
											 <input type="text" id="open" name="open" maxlength="7" class="inputBox"> ~
											 <input type="text" id="close" name="close" maxlength="7" class="inputBox">
											 <span id="timeAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">주소</td>
										<td id="input">
											 <input type="text" id="addr" name="addr" maxlength="50" class="inputBox">
										</td>
									</tr>
									
									<tr>
										<td id="info"></td>
										<td style="float: right; position: absolute; top: 750px; left: 350px;">
										<input type="button" id="seaImg" name="seaImg" value="이미지찾기" class="btn">
										<input type="button" id="modi" name="modi" value="수정"  class="btn">
										</td>
									</tr>
									
									</table>
									</div>
									<div  style="float:left">	
									<table>
									<tr>
										<td id="info" style="vertical-align: top">이미지</td>
										<td id="input">
											 <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/>
											 <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/><br/>
											 <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/>
											 <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/>
										</td>
									</tr>
									<tr>
										<td id="info" style="vertical-align: top">소개글</td>
										<td id="input">
											 <textarea name="intro" rows="10" cols="35" maxlength="1000" style="width: 470px;" id="intro"> 
											 </textarea>
											 <span id="introAlert"></span>
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