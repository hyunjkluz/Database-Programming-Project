<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
table {
	border-collapse: collapse;
	width: 500px;
	height: 400px;
	margin: auto;
}

table, td {
	border: 0px solid;
}

td.a {
	text-align: center;
	background-color: #EAEAEA;
	font-weight: bold;
}

input.imageAlign {
	vertical-align: middle;
}
</style>
<script>
	function showSub(obj) {

		f = document.forms.select_machine;

		if (obj == 1) {

			f.SUB1.style.display = "";
			f.SUB2.style.display = "";
			f.SUB3.style.display = "";
			f.SUB4.style.display = "none";
			f.SUB5.style.display = "none";
			f.SUB6.style.display = "none";

		} else {

			f.SUB1.style.display = "none";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "none";
			f.SUB4.style.display = "";
			f.SUB5.style.display = "";
			f.SUB6.style.display = "";

		}
	}
</script>

</head>
<body>
	<form method="post" onsubmit="return pwdagain()">
		<table>
			<tr>
				<td colspan="2" class="a">회원가입</td>
			</tr>
			<tr>
				<td class="a">이름</td>
				<td><input type=text size="15" required></td>
			</tr>

			<tr>
				<td class="a">생일</td>
				<td><input type="date"></td>
			</tr>

			<tr>
				<td class="a">아이디</td>
				<td><input type=text size="20" required> <input type=button
					class="imageAlign" value="중복 확인"></td>
			</tr>

			<tr>
				<td class="a">패스워드</td>
				<td><input type=password id = "pw" name = "pw" required></td>
			</tr>
			
			<tr>
				<td class="a">패스워드 확인</td>
				<td><input type=password id = "pwcheck" required>
				<p id="pwsame" style="color:red;"> <p></td>
			</tr>

			<tr>

				<td class="a">시.구.동</td>
				<td><select name="gu">
						<option>서울시</option>
				</select> <select name="si"
					onChange="showSub(this.options[this.selectedIndex].value);">
						<option value="1">강남구</option>
						<option value="2">광진구</option>
						<option value="3">성북구</option>
						<option value="4">성동구</option>
				</select> <select name="SUB1" style="display:;">
						<option value=" ">역삼동</option>
						<option value=" ">신사동</option>

				</select></td>

			</tr>




			<tr>
				<td class="a">휴대폰</td>
				<td><select name=phone>
						<option value="1" selected>010</option>
						<option value="2">011</option>
				</select> - <input type=text size="5"> - <input type=text size="5">
				</td>
			</tr>

			<tr>
				<td class="a">이메일</td>
				<td><input type=text size="40" required></td>
			</tr>



		</table>
		<div align="center">
			<input type="submit" value="회원가입 완료" onClick="pwdagain();">
			<script type="text/javascript">
				function pwdagain() {
					var pw = document.getElementById("pw").value;
					var pwck = document.getElementById("pwcheck").value;
					
					if (pw != pwck) {
						document.getElementById('pwsame').innerHTML = '비밀번호가 다릅니다. 다시 입력해 주세요';
						return false;
					}
				}
			</script>


		</div>
	</form>


</body>
</html>