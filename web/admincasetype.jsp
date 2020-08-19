<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg"></body>
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
<BR>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");


if(t1!=null&&t1!="")
{
stmt.executeUpdate("insert into CasetypeTab value('" + t1 + "','" + t2 + "','"+t3+"')");

out.println("Record Saved Successful");

}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="admincasetype.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/case.png"> </td> </tr>    
<tr> <td height="20" colspan="2"> </td> </tr> 
<tr> <td height="20"> Act No </td> <td> <input type="text" name="text3" value=""></td> </tr>
<tr> <td height="20"> Details </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="20"> Case type name </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="20">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>
