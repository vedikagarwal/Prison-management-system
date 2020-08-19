<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg"></body>
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<table border="1" cellpadding="5" cellspacing="5"> 
<tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/court.png"> </td> </tr>   
<tr><td> Prisoner ID </td><td> Purpose </td><td> Date </td></tr>
<% 
rst=stmt.executeQuery("select * from courtTab order by prisonerid");

while( rst.next())
{
out.println("<tr><td height=20>"+rst.getString(1)+ " </td><td height=20>"+rst.getString(2)+ " </td><td height=20>"+rst.getString(3)+ " </td>  </tr>" );
}

%>  
</table>

</td><td width="25%"></td></tr>
</table>


