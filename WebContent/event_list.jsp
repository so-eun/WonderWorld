<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="event_ap_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
	width: 500px;
	height: 400px;
	border-collapse: collapse;
	border-color: #a859bc;
	background-color: #ffffff;
}
tr, td {
	border: 5px solid #000000;
	border-color: #a859bc;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language=javascript>
   function check() {
      result = confirm("이벤트 신청 목록을 보시겠습니까?");
   if(result)
      document.list_form.submit();
   
   else
      return;
   }
</script>
</head>
<body background="images\half_left.png" leftmargin=250px topmargin=100px rightmargin=0>
<div align=center>
<font size=5px face="DX벤자민B" color="#000000">★ 이번달 행사 ★</font><br><br>
<form name="list_form" method=post action="event_ap_control.jsp" target="center">
<input type="hidden" name="action" value="list">
<table width=400px height=400px border=5px cellspacing=0 >
	<tr align=center>
		<td><font size="5px" face="DX벤자민B" color="#400050">좀비런 (4/30)</font></td>
		<td><input type=image src="images\list_button2.jpg" disabled></td>
	</tr>
	<tr align=center>
		<td><font size=5 face="DX벤자민B" color="#400050">애니멀 파티 (5/5)</font></td>
		<td><input type=image src="images\list_button2.jpg" disabled></td>
	</tr>
	<tr align=center>
		<td><font size=5 face="DX벤자민B" color="#400050">디즈니 파티 (6/10)</font></td>
		<td><input type=image src="images\list_button1.jpg" onclick="check()"></td>
	</tr>
	<tr align=center>
		<td><font size=5 face="DX벤자민B" color="#400050">가면 파티 (8월 중)</font></td>
		<td><input type=image src="images\list_button3.jpg" disabled></td>
	</tr>
</table>
</form>
</div>
</body>
</html>