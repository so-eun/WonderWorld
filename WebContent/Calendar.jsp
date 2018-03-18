<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" errorPage="event_ap_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
</head>
<body background="images\half_right.png" leftmargin=0px topmargin=65px rightmargin=250px>
<br><br>
<div align="center">
<%
Calendar c = Calendar.getInstance();
int year = c.get(Calendar.YEAR);
int month = c.get(Calendar.MONTH);
int y = year;
int m = month;
int date = c.get(Calendar.DATE);

String sYear=request.getParameter("year");
String sMonth=request.getParameter("month");

if(sYear != null || sMonth != null) {
	year = Integer.parseInt(sYear);
	month = Integer.parseInt(sMonth);
}

c.set(year,month,date);

out.println("<table width=500px border=0 cellspacing=0><tr>");
out.println("<td align=left><a href='Calendar.jsp?year="
	+ (year-1) + "&month=" + month + 
	"'><font size='5px' face='DX벤자민B'>◀</a>");
out.println(year + "년");
out.println("<a href='Calendar.jsp?year="+(year+1)+"&month="+month+"'>▶</a></font></td>");

out.println("<td align=center><font size='5px' face='DX벤자민B'>");
if(month==0) out.println("◀");
else out.println("<a href='Calendar.jsp?year="+year+"&month="+(month-1)+"'>◀</a>");
out.println((month+1)+"월");
if(month==11) out.println("▶");
else out.println("<a href='Calendar.jsp?year="+year+"&month="+(month+1)+"'>▶</a></font></td>");

out.println("<td align=right><font size='5px' face='DX벤자민B'>");
out.println(y+"."+(m+1)+"."+date);
out.println("</font></td></tr></table><br>");

out.println("<table width=500px height=400px border=5px cellspacing=" +
	"bordercolor='#a859bc' bgcolor='#ffffff' bodercolorlight='#a859bc' bordercolordark='#a859bc'>");
out.println("<tr height='30' align=center><td><font color='red' size='3px' face='DX벤자민B'>일</font></td>");
out.println("<td><font size='3px' face='DX벤자민B'>월</font></td>" + 
	"<td><font size='3px' face='DX벤자민B'>화</font></td>" + 
	"<td><font size='3px' face='DX벤자민B'>수</font></td>" + 
	"<td><font size='3px' face='DX벤자민B'>목</font></td>" + 
	"<td><font size='3px' face='DX벤자민B'>금</font></td>" + 
	"<td><font color='blue' size='3px' face='DX벤자민B'>토</font></td>");
c.set(year,month,1);
out.println("<tr align=center>");
int cnt=0;
for(int i=0; i<c.get(Calendar.DAY_OF_WEEK)-1; i++) {
	out.println("<td>&nbsp;</td>");
	cnt++;
}

for(int i=c.getMinimum(Calendar.DATE); i<=c.getActualMaximum(Calendar.DAY_OF_MONTH); i++) {
	if(cnt!=0 && cnt%7==0) {
		out.println("<tr align=center>");
		out.println("<td><font color=red size='3px' face='DX벤자민B'>"+i+"</font></td>");
	} 
	else
		out.println("<td><font size='3px' face='DX벤자민B'>"+i+"</font></td>");
	
	cnt++;
	if(cnt%7==0) 
		out.println("</tr>");
}
if(cnt%7!=0) {
	do{
		out.println("<td>&nbsp;</td>");
		cnt++;
	}while(cnt%7!=0);
}
%>
</table>
</div>
</body>
</html>