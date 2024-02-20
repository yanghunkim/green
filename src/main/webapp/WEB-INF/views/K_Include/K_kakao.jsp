<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js"
  integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8" crossorigin="anonymous"></script>
<script>
Kakao.init('bd403ecd2cc07484ac35b327a360b450');
console.log(Kakao.isInitialized());
</script>
 </head>
<body>
<div id=kko_style>
	<a id="kakao-login-btn" href="javascript:loginWithKakao()">
  <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="230px" height="41px"
    alt="카카오 로그인 버튼" />
</a>
	<p id="token-result"></p>
</div>
<button class="api-btn" onclick="requestUserInfo()" style="visibility:hidden; display: none;">사용자 정보 가져오기</button>
</body>
<script>
  function Kakao.API.request {
    Kakao.API.request({
      url: '/v2/user/me',
      data: {
    	    property_keys: ['kakao_account.email', 'kakao_account.gender'],
      },
    })
      .then(function(res) {
        alert(JSON.stringify(res));
      })
      .catch(function(err) {
        alert(
          'failed to request user information: ' + JSON.stringify(err)
        );
      });
  }
  function getCookie(name) {
    var parts = document.cookie.split(name + '=');
    if (parts.length === 2) { return parts[1].split(';')[0]; }
  }
</script>
</html>