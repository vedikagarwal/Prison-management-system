<%-- 
    Document   : adminpatientlist
    Created on : 23 Oct, 2019, 6:55:06 PM
    Author     : vedika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>

<body background="images/index.jpg"></body>
<A href="empmainpage.jsp"> Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/patient.jpg"> </td> </tr> 
    <tr><td> Prisoner ID  </td><td> Illness  </td><td> Treatment </td><td> Bed Number </td><td> Date of Visit </td></tr>
<% 
                rst=stmt.executeQuery("select * from Patienttab order by pid");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("pid")+ " </td><td height=20>"+rst.getString("ill")+ " </td><td height=20>"+rst.getString("treat")+ " </td> <td> " + rst.getString("bed")+ " <td height=20>"+rst.getString("dov")+ "</td></tr>" );
                }
                
%>  
    </table>
<form name="form1" action="adminpatientlist1.jsp">
    <table>
        <tr><td>Delete using Prisoner ID</td><td><input type="text" name="text1"></td></tr>
        <tr><td><input type="submit" value="Delete"></td></tr>
    </table>
</form>

</td><td width="25%"></td></tr>
</table>

