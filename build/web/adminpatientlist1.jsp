<%@ include file="connfile.jsp"%>

<%
String t1 = request.getParameter("text1");
stmt.executeUpdate("delete from patientTab where pid= '"+t1+"'");
response.sendRedirect("adminpatientlist.jsp");


%>  
