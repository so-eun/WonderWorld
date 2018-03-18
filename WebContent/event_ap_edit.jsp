<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" errorPage="event_ap_error.jsp" import="wonderWorld.event.*"%>
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="ebook" scope="request" class="wonderWorld.event.EventBook" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
   border-color: #a859bc;;
}
</style>

<title>Insert title here</title>

<script language="JavaScript">
	function delcheck(){
		result = confirm("삭제하시겠습니까?");
	if(result){
		document.form2.action.value="delete";
		document.form2.submit();
	}
	else{
			return;
		}
	}
</script>
</head>
<body background="images\back.png" topmargin="350px">
<div align="center">
<h2><font size="6px" face="DX벤자민B" >수정 / 삭제 양식</font></h2>
<form name="form2" method="post" action="event_ap_control.jsp">
<input type=hidden name="action" value="update">
<input type=hidden name="ap_id" value="<%=ebook.getAp_id()%>">
<table cellpadding="7" >
	<tr align="center">
		<td><font size="5px" face="DX벤자민B">신청자 이름</font></td>
		<td><input type="text"  size="40" name="ap_name" value="<%=ebook.getAp_name()%>"></td>	
	</tr>
	<tr align="center">
		<td><font size="5px" face="DX벤자민B">신청 인원</font></td>
		<td><input type="text" size="40"  name="ap_numOfMem" value="<%=ebook.getAp_numOfMem()%>"></td>
	</tr>
	<tr align="center">
		<td colspan="2"><font size="5px" face="DX벤자민B">
			원더랜드는  <input type="text" size="50" name="ap_memo" value="<%=ebook.getAp_memo()%>"> (이)다!!
		</font></td>
	</tr>
	<tr align="center">
		<td colspan="2">
			<input type=image src=images\edit.jpg align="center" onClick="document.form2.submit()">
			<input type=image src=images\reset.jpg align="center" onClick="document.form2.reset()">
			<input type=image src=images\delete.jpg align="center" onClick="delcheck()">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>