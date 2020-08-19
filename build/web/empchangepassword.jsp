<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg"></body>

<A href="empmainpage.jsp"> Emp Main </A> <BR> 

<%
		String t1=request.getParameter("text1");
		String t2="";
                t2=(String)session.getAttribute("empcodevar");
                String t3=request.getParameter("text2");
                session.setAttribute( "s1var", "");
		
                rst=stmt.executeQuery("select * from empTab where empcode= '" + t2 + "' and pWord='" + t1 + "'");
		if (!rst.next())
                {
                out.println("The entered old password is not correct");
                
                }
                else
                {
                if(t3!=null&&t3!=""){
		stmt.executeUpdate("update emptab set pword='" + t3 + "' where empcode='" + t2 + "'");
		session.setAttribute( "s1var", "Password Changed Successfully");
                }
                else
                {
                session.setAttribute( "s1var", "Please enter all the fields");
                }
                }
%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="empchangepassword.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/pword.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Old Password </td> <td> <input type="password" name="text1" value=""></td> </tr>
    <tr> <td height="40"> New Password </td> <td> <input type="password" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="20" colspan="2"></td> </tr> 
      <tr> <td height="20" colspan="2"><%= session.getAttribute( "s1var" )%> </td> </tr> 
    
    
    
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>
