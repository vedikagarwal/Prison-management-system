<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg"></body>
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
<BR>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");


if(t1!=null&&t1!="")
{
stmt.executeUpdate("insert into StationStaffTab value('" + t1 + "','" + t2 + "')");
out.println("Record Saved Successful");

}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="adminstationstaff.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/officers.png"> </td> </tr>    
<tr> <td height="20" colspan="2"> </td> </tr> 
<tr> <td height="40"> Prison Name </td> <td> 
<% 
rst=stmt.executeQuery("select stationname from stationTab order by stationname");
out.println("<select  name=text1 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString(1)+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>  

<tr> <td height="40"> Officer Code </td> <td> 
<% 
rst=stmt.executeQuery("select empcode from empTab order by empcode");
out.println("<select  name=text2 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString(1)+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>  

<tr> <td height="20">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>
