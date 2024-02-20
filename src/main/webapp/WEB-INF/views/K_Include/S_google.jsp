<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿈을그린병원 : google 로그인</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<meta
  http-equiv="Cross-Origin-Opener-Policy"
  content="same-origin-allow-popups"
/>

</head>
<body>
<script src="https://accounts.google.com/gsi/client" async defer></script>
<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
  
  function handleCredentialResponse(response) {
  	const responsePayload = parseJwt(response.credential);
		console.log("ID: " + responsePayload.sub);
		console.log('Full Name: ' + responsePayload.name);
		console.log('Given Name: ' + responsePayload.given_name);
		console.log('Family Name: ' + responsePayload.family_name);
		console.log("Image URL: " + responsePayload.picture);
		console.log("Email: " + responsePayload.email);
		
/* 		String ID = responsePayload.sub;
		String FullName = responsePayload.name;
		String GivenName = responsePayload.given_name;
		String familyName = responsePayload.family_name;
		String ImageURL = responsePayload.picture;
		String Email = responsePayload.email;

*/		
        $.ajax({
            type: 'post',
            url: 'google-callback',
            data: {'ID':responsePayload.sub, 'FullName':responsePayload.name, 'GivenName':responsePayload.given_name, 'familyName':responsePayload.family_name, 'ImageURL':responsePayload.picture, 'Email':responsePayload.email},
            dataType: 'text',
            success: function(result) {
            	console.log(result);
                if(result=='ok') {
                    location.replace("http://localhost:8080/"); 
                }else if(result=='no') {
                    alert("아이디가 존재하지 않습니다.\n구글 회원가입 후 로그인 가능합니다.");
                    location.replace("http://localhost:8080/googleSign");
                }
            },
            error: function(result) {
                console.log('오류 발생');
            }
        })

  }
  function parseJwt (token) {
      var base64Url = token.split('.')[1];
      var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
      var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
          return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
      }).join(''));

      return JSON.parse(jsonPayload);
 	 };
 	 
 	window.onload = function () {
    google.accounts.id.initialize({
      client_id: "623144461116-btkfbaaccvpveju1flad3oo89ec88l6h.apps.googleusercontent.com",
      callback: handleCredentialResponse
    });
    
    google.accounts.id.renderButton( document.getElementById("googleClick"),{ theme: "outline", size: "large", 'width': 230, 'height': 50, 'padding': 0}  // customization attributes
    );
    google.accounts.id.prompt(); // also display the One Tap dialog
  }
</script>


<div id="googleClick"></div>

</body>
</html>