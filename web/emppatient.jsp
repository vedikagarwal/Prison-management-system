<%-- 
    Document   : adminpatient
    Created on : 23 Oct, 2019, 6:45:39 PM
    Author     : vedika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg"></body>
<A href="empmainpage.jsp">  Main </A> <BR> 
<BR>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");

if(t1!=null&&t1!="")
{
stmt.executeUpdate("insert into patientTab value('" + t1 + "','" + t2 + "','" +t3+ "','" +t4+ "','" +t5+ "')");
out.println("Record Saved Successful");

}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="adminpatient.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/patient.jpg"> </td> </tr>    
<tr> <td height="20" colspan="2"> </td> </tr> 
<tr> <td height="40"> Prisoner ID </td> <td> 
<% 
rst=stmt.executeQuery("select pid from prisonerTab order by pid");
out.println("<select  name=text1 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString(1)+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>  

<tr> <td height="40"> Illness </td> <td> <input type="text" name="text2" value=""></td></TR>
<tr> <td height="40"> Treatment </td> <td> <input type="text" name="text3" value=""></td></tr>
<tr> <td height="40"> Bed Number </td> <td> <input type="text" name="text4" value=""></td></tr>
<tr> <td height="40"> Date of Visit </td> <td> <input type="text" name="text5" value=""></td></tr>
        
<tr> <td height="20">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>
