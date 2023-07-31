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
					height: 600px;
					margin: 50px;
					background-color: #FAD355;
					border-radius: 60px;
				}

				#loginForm {
					width: 100%;
					height: 90%;
					display: grid;
					grid-template-columns: 1.5fr 3fr 1.5fr;
					;
					align-items: center;
				}

				#loginForm div {
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
				<form id="loginForm" action="/app/member/findPwd" method="post" onsubmit="return validateForm()">
					<input hidden type="text" class="box" name="id" value="${id}">
					<input hidden type="text" class="box" name="email" value="${email}">
					<div></div>
					<div class="logo" onclick="location.href = '/app/member/mlogin';">
						<img id="logo" src="/app/resources/main/honeyPot.png">
					</div>
					<div></div>
					<div id="tit">인증번호</div>
					<input style="padding-left: 30px;" type="text" class="box" name="emailCheck">
					<div></div>
					<div></div>
					<input type="submit" class="box box2" value="확인">
					<div></div>
				</form>
			</div>
		</div>
	</body>

	</html>

	<script>
		function validateForm() {
			const emailCheck = document.querySelector("input[name=emailCheck]")
			if (emailCheck.value.trim() != '${emailCheck}') {
				alert("인증번호가 틀렸습니다");
				return false;
			}

			return true;
		}
	</script>