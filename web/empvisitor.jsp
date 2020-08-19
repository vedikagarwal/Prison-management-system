<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg"></body>
<script language="javascript">
        function Validate()
        {
            var x= document.form1.text1.value;
            if (x.length<=0)
           {
                alert("Please enter the UserName");
                return false;
           }
           
           var y = document.form1.text3.value;
           if(isNaN(y)||y.indexOf(" ")!=-1)
           {
              alert("Enter numeric value")
              return false; 
           }
          if (y.length!=10)
           {
                alert("enter 10 characters");
                return false;
           }


            var emailID = document.form1.text4.value;
            atpos = emailID.indexOf("@");
            dotpos = emailID.lastIndexOf(".");
            if (atpos < 1 || ( dotpos - atpos < 2 )) 
            {
                alert("Please enter correct email ID")
                return false;
            }
            
        }
</script>



<A href="empmainpage.jsp"> Home </A> <BR> 

<%
String t1=request.getParameter("text1");
String p1=request.getParameter("pass1");
String p2=request.getParameter("pass2");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");
String t6=request.getParameter("text6");


if(t1!=null&&t1!=""){



stmt.executeUpdate("insert into visitorTab value('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "')");
//out.println("Record Saved Successful");
response.sendRedirect("empvisitor.jsp");

}
else{
    out.println("Please enter the necessary details");
}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST" name="form1"  action="empvisitor.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/visitor.png"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Visitor Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Address </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40"> Mobile No </td> <td> <input type="text" name="text3" value=""></td> </tr>
    <tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text4" value=""></td> </tr>
    <tr> <td height="40"> Prisoner ID </td> <td> 
<% 
rst=stmt.executeQuery("select pid from prisonerTab order by pid");
out.println("<select  name=text5 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString(1)+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>  

 <tr> <td height="40"> Purpose </td> <td> <input type="text" name="text6" value=""></td> </tr>


    
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" onclick="return Validate()"></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

