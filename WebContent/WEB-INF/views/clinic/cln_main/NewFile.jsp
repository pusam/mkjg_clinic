<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/jsp_prj/common/css/main.css">
<!-- CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=079a840d25f1edd77cfb2c2c65045c8f&addr"></script>
<script type="text/javascript">
function test(){
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new daum.maps.Map(mapContainer, mapOption); 
	
/* var geocoder = new daum.maps.services.Geocoder();

var callback = function(result, status) {
    if (status === daum.maps.services.Status.OK) {
        console.log(result);
    }
};

var geo=geocoder.addressSearch('해남군 송지면', callback);
alert(geo);
 */
}
$(function(){
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new daum.maps.Map(mapContainer, mapOption); 
	
	$("#test").click(function(){
		test();
	});
});
</script>
</head>
<body>
<input type="button" id="test" value="ㅎㅇ">
<div id="map"></div>
</body>
</html>