<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg">
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
<BR>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");

if(t1!=null&&t1!="")
{
stmt.executeUpdate("insert into StationTab value('" + t1 + "','" + t2 + "','" + t3 + "')");
out.println("Record Saved Successful");

}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="adminprison.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/prison.png"> </td> </tr>    
<tr> <td height="20" colspan="2"> </td> </tr> 
<tr> <td height="20"> Prison Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="20"> Address </td> <td> <textarea  name="text2" rows="5" cols="20"></textarea></td> </tr>
<tr> <td height="20"> Phone Nos </td> <td> <input type="text" name="text3" value=""></td> </tr>

<tr> <td height="20">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

</body>