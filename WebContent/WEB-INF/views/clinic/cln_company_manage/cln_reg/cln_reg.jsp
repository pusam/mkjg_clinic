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
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=43e906eeb459be7003ff32868f8f191e&libraries=services,clusterer,drawing"></script>
	<style type="text/css">
		#hName{background-color: #F5F5F5; height: 30px;}
		#cNum{background-color: #F5F5F5; height: 30px;}
		#cName{background-color: #F5F5F5; height: 30px;}
		#phone{background-color: #F5F5F5; height: 30px;}
		#email1{background-color: #F5F5F5; height: 30px; width: 200px}
		#email2{background-color: #F5F5F5; height: 30px; width: 200px}
		#open{background-color: #F5F5F5; height: 30px;  width: 200px}
		#close{background-color: #F5F5F5; height: 30px;  width: 200px}
		#sample4_postcode{background-color: #F5F5F5; height: 30px;}
		#sample4_execDaumPostcode{background-color: #F5F5F5; height: 30px;}
		#sample4_roadAddress{background-color: #F5F5F5; height: 30px;}
		#sample4_jibunAddress{background-color: #F5F5F5; height: 30px;}
		#detailAddr{background-color: #F5F5F5; height: 30px; width: 430px}
		#intro{background-color: #F5F5F5; height: 270px;}
		.night{display: none;}
	</style>
	
	<script type="text/javascript">
	$(function(){
		
		$("#night").click(function() {
			if($("#night").is(":checked")){
				$(".night").css("display","block");
			}else{
				$(".night").css("display","none");
			}
		})
			
		
		$("#selDomain").change(function() {
			if($("#selDomain").val()!="none"){
			$("#email2").val($("#selDomain").val());
			}//end if
		});
		
		$("#add").click(function(){
			var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			var storePhone = /^\d{2,3}-\d{3,4}-\d{4}$/;
			var time = /^\d{2}:\d{2}$/;

			
			if($(':radio[name="kind"]:checked').length < 1){
				alertCenter("#hName", "#Alert", "일반병원 또는 야간병원을 체크해주세요");
			}
			
			if($("#hName").val() == ""){
				alertCenter("#hName", "#Alert", "병원명을 입력해주세요");
				return;
			}//end if
			
			if($("#cName").val() == ""){
				alertCenter("#cName", "#Alert", "원장명을 입력해주세요");
				return;
			}//end if
			
			if($("#cNum").val() == ""){
				alertCenter("#cNum", "#Alert", "사업자 번호를 입력해주세요.");
				return;
            }//end else if
            
			if($("#phone").val() == ""){
				alertCenter("#phone", "#Alert", "핸드폰 번호를 입력해주세요.");
				return;
			}else if( !chkPhone.test( $("#phone").val() )){
				alertCenter("#phone", "#Alert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
				return;
            }//end else if
            
			if($("#email1").val() == "" || $("#email2").val() == ""){
				alertCenter("#email1", "#Alert", "이메일을 입력해주세요");
				return;
			}//end if
			
			if($("#treatment").val() == ""){
				alertCenter("#treatment", "#Alert", " 진료과목을 입력해주세요");
				return;
			}//end if
			
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
            
			if($("#sample4_postcode").val() == ""){
				alertCenter("#sample4_postcode", "#Alert", "우편번호를 입력해주세요");
				return;
			}else if( !chkPost.test( $("#post").val() )){
				alertCenter("#sample4_postcode", "#Alert", "우편번호를 확인해주세요");
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

		/*다음 주소 API  */
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
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

	var geocoder = new daum.maps.services.Geocoder();

	var callback = function(result, status) {
	    if (status === daum.maps.services.Status.OK) {
	    	var div=$("#view").html	    	
	        (result[0].address_name+",  LNG(경도) : "+result[0].x
	        		+"/ LAT(위도) :"+	result[0].y);
	    }
	};
	$(function(){
		$("#btn").click(function(){
			var addr=$("#sample4_jibunAddress").val();
			geocoder.addressSearch(addr, callback);
		});
	});				
</script>
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
          <h3>mkjg_clinic<strong> 업체관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">업체관리<span class="divider">/</span></li>
            <li class="active">사업자 업체 등록</li>
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
              <h3>사업자 업체 등록</h3>
            </div>
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
          <tr>
          	<td >
                <input type="radio" name="kind">일반병원<input type="radio"  name="kind" checked="checked">24시병원<br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="병원명" id="hName" name="hName" value="ㅇ"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="사업자번호" id="cNum" name="cNum" value="ㅇ"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="원장명" id="cName" name="cName" value="ㅇ"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="전화번호" id="phone" name="phone" maxlength="13" value="010-2222-1857"><br/><br/>
            </td>
           </tr>
           <tr>
          	<td >
                <input class="input-middle" type="text" placeholder="이메일" id="email1" name="email1" maxlength="7" style="display: inline-block;" value="ㅇ">
                &nbsp;&nbsp;@&nbsp;&nbsp;
                <input class="input-middle" type="text" placeholder="직접입력" id="email2" name="email2" maxlength="7" style="display: inline-block; width: 200px" value="ㅇ">
                <select style="width: 100px" id="selDomain">
                	<option value="none">메일 선택</option>
                	<option>naver.com</option>
                	<option>daum.net</option>
                </select>
                <br/><br/>
             </td>
            </tr>
           <tr>
          	<td >
                <input class="input-large" type="text" placeholder="운영시작시간" id="open" name="open" maxlength="7" style="display: inline-block;" value="12:00">
                &nbsp;&nbsp;~&nbsp;&nbsp;
                <input class="input-large" type="text" placeholder="운영끝시간" id="close" name="close" maxlength="7" style="display: inline-block;" value="24:00">
                <br/><br/>
             </td>
            </tr>
           <tr>
          	<td >
                <input type="checkbox" id="night">야간진료여부
                <div class="night">
                <select>
                	<option>--요일 선택--</option>
                	<option>월요일</option>
                	<option>화요일</option>
                	<option>수요일</option>
                	<option>목요일</option>
                	<option>금요일</option>
                	<option>토요일</option>
                	<option>일요일</option>
                </select><br/>
                <input class="input-large" type="text" placeholder="야간운영시간" id="close" name="close" maxlength="7" style="display: inline-block;">
                &nbsp;&nbsp;~&nbsp;&nbsp;
                <input class="input-large" type="text" placeholder="야간운영시간" id="close" name="close" maxlength="7" style="display: inline-block;">
                </div>
                <br/>
             </td>
            </tr>
           <tr>
          	<td>
				<input type="text" id="sample4_postcode" placeholder="우편번호" class="input-large" readonly="readonly">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="display: inline-block;"><br>
				<input type="text" id="sample4_roadAddress" placeholder="도로명주소" style="display: inline-block;" readonly="readonly">
				<input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="display: inline-block;" readonly="readonly"><br/>
				<input type="text" placeholder="상세주소" id="detailAddr" name="detailAddr">
				<span id="guide" style="color:#999"></span>
           </td>
          </tr>
          <tr>
          	<td >
          		진료 과목 &nbsp;
                <input type="checkbox" id="treatment" name="treatment" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;"> 내과
                <input type="checkbox" id="treatment" name="treatment" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;"> 외과<br/><br/>
            </td>
           </tr>
            <tr>
          	<td>
          		미용 및 입원 유무 &nbsp;
                <input type="checkbox" id="beauty" name="beauty" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;"> 미용유무
                <input type="checkbox" id="hosCare" name="hosCare" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;"> 입원유무<br/><br/>
             </td>
           </tr>
          <tr>
          <td style="text-align: right;">
          <span id="Alert" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-inverse" id="add">업체등록</button>
           <button type="button" class="btn btn-inverse" id="cancle">취소</button><br/><br/>
          </td>
          </tr>
          </table>
           </div>
            <div class="controls docs-input-sizes" style="float: left; margin-left: 80px;">
          <table>
          	<tr>
          		<td>
          			병원 이미지 등록
          		</td>
          	</tr>
          	<tr>
         	 <td>
		             <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/>
					 <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/><br/>
					 <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/>
					 <img id="img" src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" width="230"/><br/><br/>
	          </td>
	         </tr>
	         <tr>
	         	<td>
	         		업체설명
	         	</td>
	         </tr>
	         <tr>
		         <td>
		         <textarea name="intro" rows="10" cols="35" maxlength="1000" style="width: 450px;" id="intro"></textarea>
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
	<input type="button" id="btn" value="클릭"/>
	<div id="view">
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
  <!-- daum api 우편번호  -->
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</body>

</html>
