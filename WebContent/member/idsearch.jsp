<!-- 아이디찾기폼 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <meta charset="UTF-8">


<title>아이디 찾기 폼</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<%-- <script src="<%=request.getContextPath() %>/member/member.js"></script> --%>
<script>
$(document).ready(function(){
	$("#idsearch").submit(function(){
		if($("#name1").val()==""){
			alert("이름을 입력하세요");
			$("#name1").focus();
			return false;
		}
		if($("#mailid1").val()==""){
			alert("EMail 주소를 입력하세요");
			$("#mailid1").focus();
			return false;
		}
		if($("#domain1").val()==""){
			alert("도메인을 입력하세요");
			$("#domain1").focus();
			return false;
		}		
	});	

	$("#passwdsearch").submit(function(){
		
		if($("#id").val()==""){
			alert("아이디을 입력하세요");
			$("#id").focus();
			return false;
		}
		if($("#name2").val()==""){
			alert("이름을 입력하세요");
			$("#name2").focus();
			return false;
		}
		if($("#mailid2").val()==""){
			alert("EMail 주소를 입력하세요");
			$("#mailid2").focus();
			return false;
		}
		if($("#domain2").val()==""){
			alert("도메인을 입력하세요");
			$("#domain2").focus();
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
<div calss="container" align=center>
<div class="container mt-3">
  <h2>아이디, 비밀번호 찾기 </h2>
  <br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs">
   
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">ID찾기</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">비밀번호찾기</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content" style="visivility:hidden">
   
    <div id="menu1" class="container tab-pane fade">
    	<br>
   		<form id="idsearch" method="post" action="./IdSearch.do">
		<table border=0 width=350 align=center class="table-hover" style="width: 364px;">
			<tr><th>이    름</th>
				<td class="golbeng">
		    		<input type=text autofocus="autofocus" id="name1" name="name" size=30
		           class="form-control" style=" margin-top:10px;">
			</tr>
			<tr>
				<th>E-Mail</th>
					<td class="golbeng" style="display:flex;">
					<input type=text size=10 id="mailid1" name="mailid" size=30
		           class="form-control" style="width:50%; margin-top:10px;">
		       <span style="position: relative; top: 15px;">&nbsp; @ &nbsp;</span>
		    <input type=text size=10 id="domain1" name="domain"
		           class="form-control" style="width:50%; margin-top : 10px;"  >
			<tr>
				</td>
				<td colspan=2 align=center>
				<input type="submit" value="search" style="background-color:#06335a; margin-top: 10px; color: #f7fafc; border-radius: 10%;"></td>
				
			</tr>
		</table>
	</form>
    </div>
    
    <div id="menu2" class="container tab-pane fade">
    
      <form id="passwdsearch" method="post" action="./PasswdSearch.do">
		<table border=0 width=350 align=center  class="table-hover" style="width: 364px;">
			<tr>
				<th>아이디</th>
				<td class="golbeng">
				<input type=text size=30 id="id" name="id"	autofocus="autofocus" class="form-control" style="margin-top: 10px"></td>
			</tr>
			<tr>
				<th>이  름</th>
		    	<td><input type=text autofocus="autofocus" id="name2" name="name" size=30  class="form-control" style=" margin-top:10px;"></td>
		    </tr>
			<tr>
				<th>E-Mail</th>
				<td class="golbeng" style="display:flex;">
					<input type=text size=10 id="mailid2" name="mailid" size=30
		           		class="form-control" style="width:50%; margin-top:10px;">
		       		<span style="position: relative; top: 15px;">&nbsp; @ &nbsp;</span>
		    		<input type=text size=10 id="domain2" name="domain"
		           		class="form-control" style="width:50%; margin-top : 10px;"  ></td>
		    </tr>
			<tr>
				<td colspan=2 align=center>
				<input type="submit" value="search" style="background-color:#06335a; margin-top: 10px; color: #f7fafc; border-radius: 10%;"></td>
			</tr>
		</table>
	</form>
	    
    </div>
    
  </div>
</div>
	
</body>
</html>