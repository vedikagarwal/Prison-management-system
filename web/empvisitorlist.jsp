<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jsp">

<A href="empmainpage.jsp"> Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/visitor.png"> </td> </tr>   
    <tr><td><b>Visitor name</b></td><td><b>Prisoner ID</b></td><td><b>Address</b></td><td><b>Contact</b></td></tr>
    <% 
                rst=stmt.executeQuery("select * from visitorTab order by vName");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("vName")+ " </td><td height=20>"+rst.getString("pid")+ " </td> <td> " + rst.getString("addr")+ "</td></td>"+ " </td> <td> " + rst.getString("mobile")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
