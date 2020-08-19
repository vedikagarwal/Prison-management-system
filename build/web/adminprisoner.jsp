<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<body background="images/index.jpg">
<A href="index.html">  Home </A> <BR> 

<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");
String t6=request.getParameter("text6");
String t7=request.getParameter("Gender");
String t8=request.getParameter("text8");
int i1=1000;


if(t1!=null&&t1!=""){
rst=stmt.executeQuery("select * from PrisonerTab where pid= '" + t1 + "'");
if (!rst.next()){
stmt.executeUpdate("insert into PrisonerTab value('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "')");
//out.println("Record Saved Successful patient id is : "+i1);
response.sendRedirect("adminprisoner.jsp");
}
else
{
out.println("The Prisonerid is already selected please choose another one.");
}
}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminprisoner.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/prisoner.jpg"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Prisoner Id </td> <td> <input type="text" name="text1" value=""></td> </tr>
   
    <tr> <td height="40"> Prisoner Name </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40"> Address </td> <td> <Textarea  name="text3" cols="20" > </textarea></td> </tr>
    <tr> <td height="40"> Date of Arrest </td> <td> <input type="text" name="text4" value=""></td> <td>(dd\mm\yyyy) </td></tr>
    <tr> <td height="40"> Date of Birth </td> <td> <input type="text" name="text5" value=""></td> </tr>
    <tr> <td height="40"> Gender </td> <td> <input type="radio" name="Gender" value="Male" checked>Male</td> <td> <input type="radio" name="Gender" value="Female">Female</td></TR>
    <tr> <td height="40"> Act Number </td> <td> <% 
rst=stmt.executeQuery("select actno from casetypetab order by actno");
out.println("<select  name=text6 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString(1)+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>
   <tr> <td height="40"> Prison Name </td> <td>  
<% 
rst=stmt.executeQuery("select stationname from stationTab order by stationname");
out.println("<select  name=text8 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString(1)+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>
  


    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    </table>
    </form>
</td><td width="25%"></td></tr>
</table>




</body>