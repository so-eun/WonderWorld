<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="wonderWorld.event.*" errorPage="event_ap_error.jsp"%>
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="eb" scope="page" class="wonderWorld.event.EventBean"/>
<jsp:useBean id="eventbook" class="wonderWorld.event.EventBook"/>
<jsp:setProperty name="eventbook" property="*" />

<%
	String action = request.getParameter("action");

	if(action.equals("list")) {
		ArrayList<EventBook> datas = eb.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("event_ap_list.jsp");
	}
	else if(action.equals("insert")) {
		if(eventbook.getAp_name() == null || eventbook.getAp_numOfMem() == 0 || eventbook.getAp_memo() == null) {
			out.println("<script type='text/javascript'> alert('항목을 모두 입력하세요!');history.go(-1);</script>");
		}
		else if(eb.insertDB(eventbook)) 
 			response.sendRedirect("event_ap_control.jsp?action=list");
 		else
 			throw new Exception("DB 입력 오류");
 	}
 	
 	else if(action.equals("edit")) {
 		EventBook ebook = eb.getDB(eventbook.getAp_id());
 		request.setAttribute("ebook", ebook);
 		pageContext.forward("event_ap_edit.jsp");
 	}
 	
	else if(action.equals("update")) {
		if(eb.updateDB(eventbook)) 
 			response.sendRedirect("event_ap_control.jsp?action=list");
 		else
 			throw new Exception("DB 수정 오류");
	}
 	
	else if(action.equals("delete")) {
		if(eb.deleteDB(eventbook.getAp_id())) 
 			response.sendRedirect("event_ap_control.jsp?action=list");
 		else
 			throw new Exception("DB 삭제 오류");
 	}
	

%>