<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="event_ap_error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
table {
   width: 600px;
   height: 300px;
   border-collapse: collapse;
   border-color: #a859bc;
   background-color: #ffffff;
}
tr, td {
   border: 5px solid #000000;
   border-color: #a859bc;
}
</style>

</head>
<body background="images\back.png" topmargin="350px">
<div align="center">
<h2><font size="6px" face="DX벤자민B">이벤트 참여 신청 양식</font></h2>
<form name="form1" method="post" action="event_ap_control.jsp" target="center">
<input type="hidden" name="action" value="insert">
<table cellpadding="7" >
	<tr align="center">
		<td><font size="5px" face="DX벤자민B">신청자 이름</font></td>
		<td><input type="text" size="40" name="ap_name"></td>	
	</tr>
	<tr align="center">
		<td><font size="5px" face="DX벤자민B">신청 인원</font></td>
		<td><input type="text" size="40" name="ap_numOfMem"></td>
	</tr>
	<tr align="center">
		<td colspan="2"><font size="5px" face="DX벤자민B">
			원더랜드는  <input type="text" size="50" name="ap_memo"> (이)다!!
		</font></td>
	</tr>
	<tr align="center">
		<td colspan="2">
			<input type=image src=images\submit.jpg align="center" onClick="document.form1.submit()">
			<input type=image src=images\reset.jpg align="center" onClick="history.go(-1);return false;">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>