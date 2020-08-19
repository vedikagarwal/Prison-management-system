<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg">
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
<BR>
<%
String Res1="";
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");
String t6=request.getParameter("text6");
if(t1!=null&&t1!="")
{
stmt.executeUpdate("insert into EmpTab value('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','abcd')");
Res1="Record Saved Successful";

}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="adminstaff.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/officers.png"> </td> </tr>    
<tr> <td height="20" colspan="2"> </td> </tr> 
<tr> <td height="20"> Officer Code </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="20"> Officer Name</td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="20"> Address </td> <td> <textarea  name="text3" rows="5" cols="20"></textarea></td> </tr>
<tr> <td height="20"> MobileNo </td> <td> <input type="text" name="text4" value=""></td> </tr>

<tr> <td height="40"> Qualification  </td> <td> 
<select  name=text5 size=1>
<option>SSLC </option>
<option>PUC </option>
<option>DIPLOMA </option>
<option>DEGREE </option>
<option>MASTER DEGREE </option>
</select>
</td> </tr>    

<tr> <td height="40"> Designation </td> <td> 
<select  name=text6 size=1>
<option>Constable </option>
<option>Jailer </option>
<option>ASI </option>
<option>PSI </option>
<option>Others </option>
</select>
</td> </tr>  

    
<tr>  <td align="center" colspan="2"> <input type="submit" name="Login" ></td> </tr>       
<tr>  <td align="left" colspan="2"> <%=Res1%></td> </tr>   
</table>
</form>
</td><td width="25%"></td></tr>
</table>
</body>