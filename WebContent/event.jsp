<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="event_ap_error.jsp"%>
    
<frameset rows="570px,*" frameborder="0" framespacing="0">

	<frameset cols="50%,*" frameborder="0" framespacing="0">
		<frame name="left_side" src="event_list.jsp" scrolling="no"
			marginwidth="0" marginheight="0" noresize>
		<frame name="right_side" src="Calendar.jsp" scrolling="no"
			marginwidth="0" marginheight="0" noresize> 
	</frameset>
	
	<frame name="bottom" src="event_image.jsp" scrolling="no"
			marginwidth="0" marginheight="0" noresize>
	
</frameset>