<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>CodePen - Material Login Form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" >
 
 <script type="text/javascript">
	// 페이지가 로드될 때 실행되는 스크립트
	window.onload = function(e) {
		// 서버에서 전달된 메시지가 있는 경우
		var resultMsg = '${resultMsg}';

		// 결과 메시지가 존재하면 경고창으로 출력
		if (resultMsg.length > 0) {
		    alert(resultMsg);
		 // 메시지를 한 번 보여준 후 resultMsg 값을 비웁니다.
		    console.log("결과 메시지: " + resultMsg); // 추가한 부분
		}
	}
</script>


</head>
<body>
<!-- partial:index.partial.html -->
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Material Login Form</h1><span>Pen <i class='fa fa-code'></i> by <a href='http://andytran.me'>Andy Tran</a></span>
</div>
<div class="rerun"><a href="">Rerun Pen</a></div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <!-- 로그인 폼 -->
    <form action="<c:url value='/loginPage.do'/>" method="post">
      <div class="input-container">
        <input type="text" id="memberId" name="memberId" required="required"/>
        <label for="memberId">아이디</label> <!-- 사용자명 -->
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="passwd" id="passwd" name="passwd" required="required"/>
        <label for="passwd">비밀번호</label> <!-- 비밀번호 -->
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Go</span></button>
      </div>
      <div class="footer"><a href="#">비밀번호를 잊으셨나요?</a></div> <!-- 비밀번호를 잊으셨나요? -->
    </form>
  </div>
  <div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">Register
      <div class="close"></div>
    </h1>
    <!-- 회원가입 폼 -->
    <form action="<c:url value='/join.do'/>" method="post">
      <div class="input-container">
        <input type="text" id="memberId" name="memberId" required="required"/>
        <label for="memberId">아이디</label> <!-- 사용자명 -->
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="passwd" id="passwd" name="passwd" required="required"/>
        <label for="passwd">비밀번호</label> <!-- 비밀번호 -->
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="passwd" id="passwd" name="passwd" required="required"/>
        <label for="passwd">비밀번호 재입력</label> <!-- 비밀번호 재입력 -->
        <div class="bar"></div>
      </div>
      
      <div class="input-container">
        <input type="email" id="email" name="email" required="required"/>
        <label for="email">이메일</label> <!-- 비밀번호 재입력 -->
        <div class="bar"></div>
      </div>
      
      <div class="input-container">
        <input type="text" id="nickname" name="nickname" required="required"/>
        <label for="email">닉네임</label> <!-- 비밀번호 재입력 -->
        <div class="bar"></div>
      </div>
      
      <div class="button-container">
        <button><span>다음</span></button> <!-- 다음 -->
      </div>
    </form>
  </div>
</div>
<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="https://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</body>
</html>
