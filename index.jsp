<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광주은행 REST API</title>
<link rel=" shortcut icon" href="${pageContext.request.contextPath}/resource/images/favicon.ico">
<link rel="icon" href="${pageContext.request.contextPath}/resource/images/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css">
<script src="${pageContext.request.contextPath}/resource/assets/js/jquery.min.js"></script>
</head>
<body>

<script>

function CallRestAPI() {

    $.ajax({
        type: 'POST',
        url: 'http://localhost:8080/KJBANK/CallRestAPI.do',
        data: { },
        success: function(data) {
        	//$("#resultText").html(data);
        	$("#resultText").text(data);
        },
        error: function(data) {
        	//$("#resultText").html(data.responseText);
	        $("#resultText").text(data.responseText);
	    }
    });
    
    $(".resetApiV").css("display","");
}
</script>
<div style="border-bottom: solid 1px #ddd; height: 50px;">
	<div class="container">
		<img alt="광주은행로고" src="${pageContext.request.contextPath}/resource/images/KJBANK_logo.jpg" width="200px;">
		<div class="right">
			<input type="button" value="REST API호출" class="button" onclick="CallRestAPI();">
		</div>
	</div>
</div>
<div class="container">
	<div class="bold18 blue mt18 resetApiV" style="display: none;">
		<span>결과값</span>
	</div>
	<div class="resetApiV" style="display: none; margin-top: 10px;">
		<span id="resultText"></span>
	</div>
</div>
</body>
</html>