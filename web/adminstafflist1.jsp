<%@ include file="connfile.jsp"%>

<%
String t1 = request.getParameter("text1");
stmt.executeUpdate("delete from empTab where empcode= '"+t1+"'");
response.sendRedirect("adminstafflist.jsp");


%>  
