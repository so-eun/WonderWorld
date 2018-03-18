<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="event_ap_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body background="images\top.png" topmargin="100">
<div align="center">
<table width="1400"  height="500" border ="0" cellpadding="0" cellspacing="0" >
	<tr align="center">
		<%
			if(request.getParameter("imgNum") == null || request.getParameter("imgNum").equals("1")) {
				out.println("<td align='center' width='700'><img src='images\\introduce2_L1.jpg' /></td>");
				out.println("<td><font size='8' face='DX벤자민B'>익스트림 윙</font><br><br><br><br>"
				+"<font size='6' face='DX벤자민B'>기존의 시시함은 가라!!<br>"+
				"강렬한 바람을 가르며 날아가는 익스트림 윙<br>새롭게 태어난 어드벤처 놀이기구!!</font></td>");
			}
			else if(request.getParameter("imgNum").equals("2")) {
				out.println("<td align='center' width='700'><img src='images\\introduce2_L2.jpg' /></td>");
				out.println("<td><font size='8' face='DX벤자민B'>드래곤 플라이 슈팅슈팅</font><br><br><br><br>"
						+"<font size='6' face='DX벤자민B'>심술쟁이 드래곤을 향해 슈팅하라!<br>"+
						"드래곤이 성에 쳐들어 왔습니다!<br>"+"멋있는 기사가 되어 심술쟁이 드래곤을 무찌르세요!</font></td>");
			}
			else if(request.getParameter("imgNum").equals("3")) {
				out.println("<td align='center' width='700'><img src='images\\introduce2_L3.jpg' /></td>");
				out.println("<td><font size='8' face='DX벤자민B'>원더 스핀</font><br><br><br><br>"
						+"<font size='6' face='DX벤자민B'>원더월드 스핀시리즈 그 첫번째!<br>"+
						"아시아 최고 속도를 자랑하는 원더월드의 명물!<br>놀라운 스핀을 경험하세요!!</font></td>");
			}
			else if(request.getParameter("imgNum").equals("4")) {
				out.println("<td align='center' width='700'><img src='images\\introduce2_L4.jpg' /></td>");
				out.println("<td><font size='8' face='DX벤자민B'>회전목마</font><br><br><br><br>"
						+"<font size='6' face='DX벤자민B'>원더월드만의 특별한 회전목마!<br>"+
						"아름다운 음악과 함께<br>아이들은 백마를 탄 왕자와 공주가 되고<br>어른들은 동심의 세계로 돌아갑니다. </font>"+"</td>");
			}
			else {
				out.println("<td align='center' width='700'><img src='images\\introduce2_L5.jpg' /></td>");
				out.println("<td><font size='8' face='DX벤자민B'>빙글빙글 회전컵</font><br><br><br><br>"
						+"<font size='6' face='DX벤자민B'>사랑과 우정을 싣고 빙글빙글!<br>"+
						"사방으로 빙글빙글 돌아가는 회전컵!<br>돌면서 즐기는 짜릿한 즐거움!!</font>"+"</td>");
			}
		%>
	</tr>
</table>
</div>	
</body>
</html>