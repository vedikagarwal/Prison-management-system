<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg">
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<table border="1" cellpadding="5" cellspacing="5"> 
<tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/prison.png"> </td> </tr>   
<tr><td> Prison Name </td><td> Address </td><td> Phone Nos </td></tr>
<% 
rst=stmt.executeQuery("select * from StationTab order by stationName");

while( rst.next())
{
out.println("<tr><td height=20>"+rst.getString(1)+ " </td><td height=20>"+rst.getString(2)+ " </td>  <td height=20>"+rst.getString(3)+ " </td></tr>" );
}

%>  
</table>
<form name="form1" action="adminprisonlist1.jsp">
    <table>
        <tr><td>Delete using Prison name</td><td><input type="text" name="text1"></td></tr>
        <tr><td><input type="submit" value="Delete"></td></tr>
    </table>
</form>
</td><td width="25%"></td></tr>
</table>

</body>