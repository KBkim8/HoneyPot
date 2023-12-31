<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<%@ include file="/WEB-INF/views/common/setup.jsp" %>
			<style>
				#floor {
					height: 937px;
					width: 1920px;
					display: flex;
					justify-content: center;
					align-items: center;
				}

				#login-area {
					display: flex;
					justify-content: center;
					align-items: center;
					width: 1000px;
					height: 800px;
					margin: 50px;
					background-color: #FAD355;
					border-radius: 60px;
				}

				#loginForm {
					width: 100%;
					height: 90%;
					display: grid;
					grid-template-columns: 1.5fr 3fr 1.5fr;
					align-items: center;
				}

				#loginForm>div:not(.bbox) {
					display: flex;
					justify-content: center;
					align-items: center;
				}

				#logo {
					height: 80px;
					margin-left: 15px;
					margin-top: 5px;
				}

				.box {
					background-color: rgb(255, 255, 255);
					border-radius: 20px;
					border: none;
					height: 70px;
				}

				.box2 {
					background-color: #4A321F;
					color: white;
					font-size: 24px;
				}

				#tit {
					font-size: 28px;
				}
			</style>

	</head>

	<body>
		<div id="floor">
			<div id="login-area">
				<form id="loginForm" action="/app/member/changePwd" method="post" onsubmit="return validateForm()">
					<div></div>
					<div class="logo">
						<img id="logo" src="/app/resources/main/honeyPot.png">
					</div>
					<div></div>
					<div id="tit">이전 비밀번호</div>
					<input style="padding-left: 30px; background-color: #4A321F; color: white;" type="password"
						class="box originPwd" value="" readonly>
					<div></div>
					<div id="tit">새 비밀번호</div>
					<input style="padding-left: 30px;" type="password" class="box newPwd1" name="pwd">
					<div></div>
					<div id="tit">비밀번호 확인</div>
					<input style="padding-left: 30px;" type="password" class="box newPwd2">
					<div></div>
					<div></div>
					<div class="bbox">
						<%@ include file="/WEB-INF/views/data/captcha.jsp" %>
					</div>
					<div></div>
					<div></div>
					<input type="submit" class="box box2" value="비밀번호 수정">
					<div></div>
				</form>
			</div>
		</div>
	</body>

	</html>

	<script>
		const originPwd = document.querySelector('.originPwd');
		if ('${not empty loginMember}' == 'true') {
			originPwd.value = '${loginMember.pwd}';
		} else {
			originPwd.value = '${loginAdmin.pwd}';
		}

		function validateForm() {
			const pwd = document.querySelector('.newPwd1');
			const pwdCheck = document.querySelector('.newPwd2');
			const ans = document.querySelector('#answer');

			if(originPwd.value == pwd.value) {
				alert("현재 비밀번호와 똑같은 비밀번호로 변경할 수 없습니다");
				pwd.style.backgroundColor = 'white';
				pwd.style.color = 'black';
				return false;
			}

			if (!(/^[\w!@#$%^&*-]{8,15}$/.test(pwd.value))) {
				alert('영어/숫자/특수문자 조합 8~15자리로 비밀번호를 구성해주세요');
				pwd.style.backgroundColor = 'white';
				pwd.style.color = 'black';
				return false;
			} else {
				pwd.style.backgroundColor = '#4A321F';
				pwd.style.color = 'white';
			}

			if (pwd.value != pwdCheck.value || pwdCheck.value.trim().length == 0) {
				alert("비밀번호 일치여부를 확인해주세요.");
				pwdCheck.style.backgroundColor = 'white';
				pwdCheck.style.color = 'black';
				return false;
			} else {
				pwdCheck.style.backgroundColor = '#4A321F';
				pwdCheck.style.color = 'white';
			}

			if (ans.style.backgroundColor != 'rgb(74, 50, 31)') {
				alert("자동입력 방지코드를 다시 확인해주세요");
				return false;
			}

			sessionStorage.setItem("newPwdValue", pwd.value);
			return true;
		}
	</script>