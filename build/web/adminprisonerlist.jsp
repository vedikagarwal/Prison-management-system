<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>

<body background="images/index.jpg">
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/prisoner.jpg"> </td> </tr> 
    <tr><td> Prisoner ID  </td><td> Prisoner Name  </td><td> Address </td><td> Date of Arrest </td><td> Date of Birth </td><td> Gender </td><td> Act Number </td><td> Prison </td></tr>
<% 
                rst=stmt.executeQuery("select * from PrisonerTab order by pid");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("pid")+ " </td><td height=20>"+rst.getString("pname")+ " </td><td height=20>"+rst.getString("addr")+ " </td> <td> " + rst.getString("doa")+ " <td height=20>"+rst.getString("dob")+ "</td><td height=20>"+rst.getString("gender")+ "</td><td height=20>"+rst.getString("actno")+ "</td><td height=20>"+rst.getString("prisonName")+ " </td></tr>" );
                }
                
%>  
    </table>
<form name="form1" action="adminprisonerlist1.jsp">
    <table>
        <tr><td>Delete using Prisoner ID</td><td><input type="text" name="text1"></td></tr>
        <tr><td><input type="submit" value="Delete"></td></tr>
    </table>
</form>

</td><td width="25%"></td></tr>
</table>

</body>