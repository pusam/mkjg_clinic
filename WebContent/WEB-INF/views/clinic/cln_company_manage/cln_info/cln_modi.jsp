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
	<style type="text/css">
		#hName{background-color: #F5F5F5; height: 25px;}
		#cNum{background-color: #F5F5F5; height: 25px;}
		#cName{background-color: #F5F5F5; height: 25px;}
		#phone{background-color: #F5F5F5; height: 25px;}
		#email{background-color: #F5F5F5; height: 25px;}
		#open{background-color: #F5F5F5; height: 25px;}
		#close{background-color: #F5F5F5; height: 25px;}
		#night_open{background-color: #F5F5F5; height: 25px;}
		#night_close{background-color: #F5F5F5; height: 25px;}
		#post{background-color: #F5F5F5; height: 25px;}
		#doro_addr{background-color: #F5F5F5; height: 25px;}
		#addr1{background-color: #F5F5F5; height: 25px;}
		#addr2{background-color: #F5F5F5; height: 25px;}
		#intro{background-color: #F5F5F5; height: 270px;}
	</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function searchAddress() {
        new daum.Postcode({
            oncomplete: function(data) {
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                document.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('doro_addr').value = fullRoadAddr;
                document.getElementById('addr1').value = data.jibunAddress;
                
                document.getElementById('addr1').focus();

                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
	
	<script type="text/javascript">
	$(function(){
		$("#modi").click(function(){
			var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			var chkEmail = /^[\w]{4,}@[\w]+(\.[\w-]+){1,3}$/
			var storePhone = /^\d{2,3}-\d{3,4}-\d{4}$/;
			var time = /^\d{2}:\d{2}$/;
			
			if($("#phone").val() == ""){
				alertCenter("#phone", "#Alert", "핸드폰 번호를 입력해주세요.");
				return;
			}else if( !chkPhone.test( $("#phone").val() )){
				alertCenter("#phone", "#Alert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
				return;
            }//end else if
            
			if($("#email").val() == ""){
				alertCenter("#email", "#Alert", "이메일을 입력해주세요.");
				return;
			}else if( !chkEmail.test( $("#email").val() )){
			alertCenter("#email", "#Alert", "이메일을 확인해주세요.");
			return;
	   	 }//end else if
			
			if($("#open").val() == "" || $("#close").val() == ""){
				alertCenter("#close", "#Alert", " 운영시간을 입력해주세요.");
				return;
			}else if( !time.test( $("#open").val() )){
				alertCenter("#close", "#Alert", "오픈시간을 확인해주세요. (ex: 12:00)");
				return;
            }else if( !time.test( $("#close").val() )){
				alertCenter("#close", "#Alert", "클로즈시간을 확인해주세요. (ex: 20:00)");
				return;
            }//end else if
			
			if($("#post").val() == ""){
				alertCenter("#post", "#Alert", "우편번호를 입력해주세요");
				return;
			}else if( !chkPost.test( $("#post").val() )){
				alertCenter("#post", "#Alert", "우편번호를 확인해주세요");
				return;
	   	 }//end else if
	   	 
			if($("#addr1").val() == ""){
				alertCenter("#addr1", "#Alert", "주소를 입력해주세요");
				return;
			}//end if
	   	 
			if($("#addr2").val() == ""){
				alertCenter("#addr2", "#Alert", "상세주소를 입력해주세요");
				return;
			}//end if
			
			if($("#intro").val() == ""){
				alertCenter("#intro", "#Alert", " 소개글을 입력해주세요.");
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
											<li class="dropdown"><a
												href="http://localhost:8080/mkjg/clinic/cln_declaration/hog_list.jsp">신고관리</a></li>
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
											<li class="dropdown active"><a href="#">업체관리</a>
												<ul class="dropdown-menu">
													<li><a
														href="http://localhost:8080/mkjg/clinic/cln_company_manage/employee/employee_list.jsp">직원관리</a></li>
													<li><a
														href="http://localhost:8080/mkjg/clinic/cln_company_manage/cln_info/ceo_login.jsp">병원정보
															관리</a></li>
													<li><a href="">사업자 업체등록</a></li>
												</ul></li>
											<li class="dropdown"><a
												href="http://localhost:8080/mkjg/clinic/cln_notice/notice_list.jsp">공지사항</a></li>
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
          <h3>MKJG<strong> 업체관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">업체관리<span class="divider">/</span></li>
            <li class="active">병원정보</li>
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
              <h3>병원정보</h3>
            </div>
          
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
         <tr>
          	<td>
                <input type="radio" id="operating" name="operating" class="radio" style=" width: 15px; margin-bottom: 6px;"> 일반병원&nbsp;&nbsp;
                <input type="radio" id="operating" name="operating" class="radio" style=" width: 15px; margin-bottom: 6px;"> 24시간 병원<br/><br/>
             </td>
          <tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="병원명" id="hName" name="hName" readonly="readonly"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="사업자번호" id="cNum" name="cNum" readonly="readonly"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="원장명" id="cName" name="cName" readonly="readonly"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="전화번호" id="phone" name="phone" maxlength="13"><br/><br/>
            </td>
           </tr>
           <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="이메일" id="email" name="email" maxlength="50" ><br/><br/>
            </td>
           </tr>
            
           <tr>
          	<td >
                <input class="input-large" type="text" placeholder="운영시간" id="open" name="open" maxlength="7" style="display: inline-block;">
                &nbsp;&nbsp;~&nbsp;&nbsp;
                <input class="input-large" type="text" placeholder="운영시간" id="close" name="close" maxlength="7" style="display: inline-block;">
                <br/><br/>
             </td>
            </tr>
            <tr>
            	<td>
            	<input type="checkbox" id="beauty" name="beauty" class="checkbox" style=" width: 15px; margin-bottom: 6px;">&nbsp;야간진료
            	&nbsp;&nbsp;&nbsp;&nbsp;
            	<select name="select_day" id="select_day" style="width: 120px; font-size: 13px; margin-right: 70px">
						<option selected="selected" style="line-height: 25px; border: 1px solid #6093e7; height: 15px; border-radius: 3px">--- 요일선택 ---</option>
						<option>월요일</option>
						<option>화요일</option>
						<option>수요일</option>
						<option>목요일</option>
						<option>금요일</option>
						<option>토요일</option>
						<option>일요일</option>
					</select>
            	
            	</td>
            </tr>
             <tr>
          	<td >
                <input class="input-large" type="text" placeholder="야간 운영시간" id="night_open" name="night_open" maxlength="7" style="display: inline-block;">
                &nbsp;&nbsp;~&nbsp;&nbsp;
                <input class="input-large" type="text" placeholder="야간 운영시간" id="night_close" name="night_close" maxlength="7" style="display: inline-block;">
                <br/><br/>
             </td>
            </tr>
           <tr>
          	<td>
                <input class="input-large" type="text" placeholder="우편번호" id="post" name="post" style="display: inline-block;" readonly="readonly">
				<input class="btn btn-inverse" type="button" onclick="searchAddress()" value="찾기" style="margin-left: 10px; margin-bottom: 5px;">
                <br/><br/>
           </td>
           </tr>
          <tr>
          	<td>
                <input class="input-xlarge" type="text" placeholder="도로명주소" id="doro_addr" name="doro_addr" maxlength="100"
                 readonly="readonly" style="width: 258px;">
                <input class="input-xlarge" type="text" placeholder="지번주소" id="addr1" name="addr1" maxlength="100"
                 readonly="readonly"  style="width: 258px;"><br/>
                <input class="input-xxlarge" type="text" placeholder="상세주소" id="addr2" name="addr2" maxlength="100"><br/><br/>
           </td>
          </tr>
          <tr>
          	<td>
                <input type="checkbox" id="beauty" name="beauty" class="checkbox" style=" width: 15px; margin-bottom: 6px;"> 미용가능&nbsp;&nbsp;
                <input type="checkbox" id="hosCare" name="hosCare" class="checkbox" style=" width: 15px; margin-bottom: 6px;"> 입원가능<br/><br/>
             </td>
          <tr>
             <tr>
          	<td>
                <input type="checkbox" id=internal name="internal" class="checkbox" style="width: 15px; margin-bottom: 6px;"> 내과&nbsp;&nbsp;
                <input type="checkbox" id="surgery" name="surgery" class="checkbox" style="width: 15px; margin-bottom: 6px;"> 외과<br/><br/>
             </td>
          <tr>
          <td style="text-align: right;">
          <span id="Alert" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-inverse" id="modi">수정</button>
           <button type="button" class="btn btn-inverse" id="home">home</button><br/>
          </td>
          </tr>
                </table>
           </div>
            <div class="controls docs-input-sizes">
         	 <table>
          	<tr>
         	 <td>
         	 <div class="row">
       			 <ul class="portfolio-area da-thumbs">
       			 
        		  <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div>
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mkjg/clinic/images/1.jpg" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mkjg/clinic/images/1.jpg">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
              </div>
            </div>
          </li>
          <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div>
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mkjg/clinic/images/2.jpg" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mkjg/clinic/images/2.jpg">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
                </div>
              </div>
          </li>
          <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div >
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
                </div>
            </div>
          </li>
          <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div>
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mkjg/clinic/images/ok.png" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mkjg/clinic/images/ok.png">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
                </div>
              </div>
          </li>
          </ul>
          </div>
	          </td>
	         </tr>
	         <tr>
		         <td >
		         <textarea name="intro" rows="10" cols="35" maxlength="1000" style="width: 490px; margin-left: 30px;" id="intro"></textarea>
		         </td>
	         </tr>
	         <tr>
	         	<td>
	         	<br/>
	         		
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

  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/clinic/assets/js/custom.js"></script>

</body>

</html>
