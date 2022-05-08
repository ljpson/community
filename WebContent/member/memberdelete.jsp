<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 폼</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<%-- <script src="<%=request.getContextPath() %>/member/member.js"></script> --%>
<script>
	$(document).ready(function() {
		$("form").submit(function() {

			if ($("#passwd").val() == "") {
				alert("비밀번호를 입력하세요");
				$("#passwd").focus();
				return false;
			}

		});
	});
</script>
</head>
<body>
<!-- header부분 -->
<jsp:include page="/header.jsp" />
<br>
  <div class="container">
  <center>
  <h3>비밀번호 입력</h3>
	<form method="post" action="<%=request.getContextPath()%>/MemberStop.do">

		<table border=0 width=350 align=center class="table table-striped" style="width: 364px; margin-top:20px">
			
			<tr>
				<td class="golbeng" style="display:flex;">비밀번호</td>
				<td><input type="password" size=20 id="passwd" name="passwd"  class="form-control"
					autofocus="autofocus"></td>

			</tr>
			<tr>
				<td  colspan=2 align=center>
				<input type="submit"  class="btn btn-danger"  value="회원탈퇴" ></td>
			</tr>
		</table>
	</form>
	</center>
	</div>
</body>
</html>