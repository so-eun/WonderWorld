<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="event_ap_error.jsp"%>
    
<%@ page import="java.util.ArrayList" import="wonderWorld.event.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이벤트 게시판</title>
</head>
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />
<body background="images\back.png" topmargin=100px>
<br><br>
<table align=center border="0" cellpadding="20px">
   <tr align=left>
      <td>
         <img align=left src="images\party_image.jpg" style="border:3px solid #a859bc"  >
      </td>
      <td>
      <br>
      <font color="#400050" size=6px face="DX벤자민B">
      바로 지금!!!<br>
      디즈니 캐릭터들과 함께하는<br>
      신나는 파티가 시작됩니다!!!!<br>
      오른쪽의 신청버튼 클릭♡<br>
      </font>
      <br>
      </td>
</table>
<br><br><br>
<div align="center" >
<form method=post action="event_ap_form.jsp" target="center">
<table border="0" width="1000px">
   <tr>
      <td align="right"><font size=5px face="DX벤자민B">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;★ 현재 신청자 목록 ★</font></td>
      <td align="right"><font size=4px face="DX벤자민B">현재 <%=datas.size()%>명 신청중!!&nbsp;</font></td>
      <td width="50px" align="right"><input type=image align="right" 
      src="images\event_list_submit.jpg" ></td>
   </tr>
</table>
</form>
<br>
<table border="1" cellspacing="0" align="center" width="1000px" bgcolor="#ffffff" style="border:3px solid #a859bc">
   <tr height="30px" align="center">
      <td><font size=4px face="DX벤자민B" color="#400050">신청 번호</font></td>
      <td><font size=4px face="DX벤자민B" color="#400050">신청자 이름</font></td>
      <td><font size=4px face="DX벤자민B" color="#400050">신청 인원</font></td>
      <td><font size=4px face="DX벤자민B" color="#400050">원더월드는 __________________(이)다!!</font></td>
   </tr>
   
   <% 
   
   int index;
   if(request.getParameter("index") == null)  
      index = 1;
   else 
      index = Integer.parseInt(request.getParameter("index"));
   
   int total_page=1;
   if(datas.size()%7 ==0) {
      total_page = datas.size()/7;
   }
   else {
      total_page = (datas.size()/7)+1;
   }
   
   //하이퍼링크로 index페이지 제외한 페이지들만 링크 처리
   EventBook event;
   for(int j=(index-1)*7; j < (index*7); j++) {
      if(j == datas.size()) break;
      
      event = (EventBook)datas.get(j);
      out.println("<tr align=center><td><font face='맑은 고딕'>");
      out.println("<a href='event_ap_control.jsp?action=edit&ap_id="+event.getAp_id()+"'>"+event.getAp_id()+"</a>");
      out.println("</font></td><td><font face='맑은 고딕'>"+event.getAp_name()+"</font></td><td><font face='맑은 고딕'>");
      out.println(event.getAp_numOfMem()+"</font></td><td><font face='맑은 고딕'>"+event.getAp_memo()+"</font></td>");
      out.println("</tr>");
   }
   out.println("</table><br>");
   
   for(int p=1; p <= total_page; p++) {
      if(p>1)
         out.println("|");
      
      if(p==index)
         out.println("♥");
      else
         out.println("<a href='event_ap_control.jsp?action=list&index="+p+"'>"+"♥"+"</a>");
         
   }
         
   
   %>
</table>
</div>
</body>
</html>