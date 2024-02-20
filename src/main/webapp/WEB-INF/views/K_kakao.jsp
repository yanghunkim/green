<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<a id="kakao-login-btn"></a>
	<div id="result"></div>
<script type="text/javascript">
  function unlinkApp() {
    Kakao.API.request({
      url: '/v1/user/unlink',
      success: function(res) {
        alert('success: ' + JSON.stringify(res))
      },
      fail: function(err) {
        alert('fail: ' + JSON.stringify(err))
      },
    })
  }
</script>
 
<script type="text/javascript">
Kakao.init('52d3ec4ed67af68f08fbd6870b95ad2a');
console.log(Kakao.isInitialized());
 
  Kakao.Auth.createLoginButton({
    container: '#kakao-login-btn',
    success: function(authObj) {
      Kakao.API.request({
        url: '/v2/user/me',
        success: function(result) {
        	var id = result.id
        	var profile = result.kakao_account.profile
        	var nickname = profile.nickname
        	console.log(id);
        	console.log(nickname);
        	
        	 $.ajax({
	            type: 'post',
	            url: 'kakaoData',
	            data: {'k_id':id, 'k_nickname':nickname},
	            dataType: 'text',
	            success: function(result) {
	                if(result=="ok") {
	                	console.log('로그인')
	                    location.replace("http://localhost:8080/") 
	                } else if(result=="no") {
	                    console.log('회원가입')
	                    location.replace("http://localhost:8080/memberKakao")
	                }
	            },
	            error: function(result) {
	                console.log('오류 발생')
	            }
	        }) 
          $('#result').append(result);
          id = result.id
          connected_at = result.connected_at
          kakao_account = result.kakao_account
          $('#result').append(kakao_account);
          resultdiv="<h2>로그인 성공 !!"
          resultdiv += '<h4>id: '+id+'<h4>'
          resultdiv += '<h4>connected_at: '+connected_at+'<h4>'
          email ="";
          gender = "";
          if(typeof kakao_account != 'undefined'){
        	  email = kakao_account.email;
        	  gender = kakao_account.gender;
          }
          resultdiv += '<h4>email: '+email+'<h4>'
          resultdiv += '<h4>gender: '+gender+'<h4>'
          $('#result').append(resultdiv);
        },
        fail: function(error) {
          alert(
            'login success, but failed to request user information: ' +
              JSON.stringify(error)
          )
        },
      })
    },
    fail: function(err) {
      alert('failed to login: ' + JSON.stringify(err))
    },
  })
</script>
</body>
</html>