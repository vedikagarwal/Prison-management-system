<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg"></body>
<A href="empmainpage.jsp">  Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<table border="1" cellpadding="5" cellspacing="5"> 
<tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/officers.png"> </td> </tr>   
<tr><td> Station Name </td><td> Emp Code </td></tr>
<% 
rst=stmt.executeQuery("select * from StationStaffTab order by stationName");

while( rst.next())
{
out.println("<tr><td height=20>"+rst.getString(1)+ " </td><td height=20>"+rst.getString(2)+ " </td>  </tr>" );
}

%>  
</table>

</td><td width="25%"></td></tr>
</table>

