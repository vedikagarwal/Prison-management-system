<%@ include file="connfile.jsp"%>

<%
String t1 = request.getParameter("text1");
stmt.executeUpdate("delete from StationTab where stationName= '"+t1+"'");
response.sendRedirect("adminprisonlist.jsp");


%>  
