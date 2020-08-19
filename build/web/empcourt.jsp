<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>

<A href="empmainpage.jsp"> Main </A> <BR> 
<BR>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");

if(t1!=null&&t1!="")
{
stmt.executeUpdate("insert into courtTab value('" + t1 + "','" + t2 + "','" +t3+"')");
out.println("Record Saved Successful");

}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="admincourt.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/staff1.bmp"> </td> </tr>    
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

<tr> <td height="40"> Purpose </td> <td> 
 <select  name=text6 size=1>
    <option> Trail </option>
    <option> Hearing </option>
    <option> Bail </option>
    <option> Parole </option>
    <option> Appeal </option>
    <option>Others </option>
    </select>   

</td> </tr>  
<tr> <td height="40"> Date of Visit </td> <td> <input type="text" name="text3" value=""></td>
<tr> <td height="20">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>
