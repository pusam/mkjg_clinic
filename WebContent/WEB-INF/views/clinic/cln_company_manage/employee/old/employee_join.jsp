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
		table{
		width: 800px;
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
		#id{width: 300px; height: 37px; }
		#pass1{width: 150px; height: 37px;}
		#pass2{width: 150px; height: 37px;}
		#name{width: 100px; height: 37px;}
		#birth{width: 130px; height: 37px;}
		#phone{width: 250px; height: 37px;}
		#email{width: 300px; height: 37px;}
		#post{width: 150px; height: 37px;}
		#addr1{width: 450px; height: 37px;}
		#addr2{width: 450px; height: 37px;}
		</style>
		<script type="text/javascript">
		$(function(){
		$("#join").click(function(){
			var chkId =/^[a-z][a-z\d]{3,20}$/
			var chkName=/^[가-힝]{2,}$/
			var chkBirth= /^([0-9]{4})-?([0-9]{2})-?([0-9]{2})%/
			var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			var chkEmail = /^[\w]{4,}@[\w]+(\.[\w-]+){1,3}$/
			var chkPost = /^([0-9]{3})-?([0-9]{3})$/
					
			var chkGender = $('input[name="gender"]:checked').val();
			
			if($("#id").val() == ""){
				alertCenter("#id", "#idAlert", "아이디를 입력해주세요.");
				return;
			}else if( !chkId.test( $("#id").val() )){
				alertCenter("#id", "#idAlert", "아이디는 영문 소문자 혹은 소문자와 숫자 혼합으로 3~20자 입력해주세요");
				return;
            }//end else if
            
			if($("#pass1").val() == ""){
				alertCenter("#pass1", "#passAlert1", "비밀번호를 입력해주세요.");
				return;
            }//end else if
            
			if($("#pass2").val() == ""){
				alertCenter("#pass2", "#passAlert2", "비밀번호를 입력해주세요.");
				return;
            }//end else if
            
            if($("#pass1").val() != "" && $("#pass2").val() != "" ){
            	if($("#pass1").val() != $("#pass2").val() ){
            		alertCenter("#pass2", "#passAlert2", "비밀번호가 같은지 확인해주세요.");
    				return;
            	}//end if
            }//end if
            
			if($("#name").val() == ""){
				alertCenter("#name", "#nameAlert", "이름을 입력해주세요.");
				return;
			}else if( !chkName.test( $("#name").val() )){
				alertCenter("#name", "#nameAlert", "이름은 최소 2자 한글로만 작성해주세요.");
				return;
            }//end else if
            
			
			if($("#birth").val() == ""){
				alertCenter("#birth", "#birthAlert", "생년월일을 입력해주세요.");
				return;
			}else if(!chkBirth.test( $("#birth").val() )){
				alertCenter("#birth", "#birthAlert", "생년월일을 확인해주세요. (ex: 1900-01-01)");
				return;
			}//end else if
			
			if($("#phone").val() == ""){
				alertCenter("#phone", "#phoneAlert", "핸드폰 번호를 입력해주세요.");
				return;
			}else if( !chkPhone.test( $("#phone").val() )){
				alertCenter("#phone", "#phoneAlert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
				return;
            }//end else if
			
			if($("#email").val() == ""){
				alertCenter("#email", "#emailAlert", "이메일을 입력해주세요.");
				return;
			}else if( !chkEmail.test( $("#email").val() )){
			alertCenter("#email", "#emailAlert", "이메일을 확인해주세요.");
			return;
       	 }//end else if
       	 
       	 
			if($("#post").val() == ""){
				alertCenter("#post", "#postAlert", "우편번호를 입력해주세요");
				return;
			}else if( !chkPost.test( $("#post").val() )){
				alertCenter("#post", "#postAlert", "우편번호를 확인해주세요");
				return;
       	 }//end else if
       	 
			if($("#addr1").val() == ""){
				alertCenter("#addr1", "#addrAlert", "주소를 입력해주세요");
				return;
			}//end if
       	 
			if($("#addr2").val() == ""){
				alertCenter("#addr2", "#addrAlert", "상세주소를 입력해주세요");
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
										<h2>신규 직원등록</h2>
									</header>
									<br/>
									<div>
									<table>
									<tr>
										<td id="info">아이디</td>
										<td id="input">
											<input type="text" id="id" name="id" maxlength="20" class="inputBox">&nbsp;&nbsp; <a href=""><img src="http://localhost:8080/mkjg/clinic/images/check.png"></a>
											<span id="idAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">비밀번호</td>
										<td id="input">
											 <input type="password" id="pass1" name="pass1" maxlength="15" class="inputBox">
											 <span id="passAlert1"></span>
										</td>
									</tr>
										<tr>
										<td id="info">비밀번호확인</td>
										<td id="input">
											 <input type="password" id="pass2" name="pass2" maxlength="15" class="inputBox">
											 <span id="passAlert2"></span>
										</td>
									</tr>
										<tr>
										<td id="info">이름</td>
										<td id="input">
											 <input type="text" id="name" name="name" maxlength="10" class="inputBox">
											 <span id="nameAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">성별</td>
										<td id="input">
											 <input type="radio" id="gender" name="gender" class="radio" value="남자" checked>남자&nbsp; &nbsp; | &nbsp;&nbsp;
											 <input type="radio" id="gender" name="gender" class="radio" value="여자">여자
										</td>
									</tr>
										<tr>
										<td id="info">생년월일</td>
										<td id="input">
											 <input type="text" id="birth" name="birth" maxlength="10" class="inputBox">
											 <span id="birthAlert"></span>
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
										<td id="info">이메일</td>
										<td id="input">
											 <input type="text" id="email" name="email" maxlength="30" class="inputBox">
											 <span id="emailAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">우편번호</td>
										<td id="input">
											 <input type="text" id="post" name="post" maxlength="7" class="inputBox"><a href="">&nbsp;&nbsp;<img src="http://localhost:8080/mkjg/clinic/images/searchPost.png"></a>
											<span id="postAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info">주소</td>
										<td id="input">
											 <input type="text" id="addr1" name="addr1" maxlength="50" class="inputBox"><br/>
											 <input type="text" id="addr2" name="addr2" maxlength="50" class="inputBox"><span id="addrAlert"></span>
										</td>
									</tr>
										<tr>
										<td id="info"></td>
										<td>
										<input type="button" id="join" name="join" value="등록"  class="btn">
										</td>
									</tr>
									</table>
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