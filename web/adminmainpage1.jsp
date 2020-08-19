<%-- 
    Document   : adminmainpage1
    Created on : 22 Oct, 2019, 12:31:56 PM
    Author     : vedika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Main Page</title>
    </head>
    <body background="images/index.jpg">
       <A href="index.html">Log Out</a>       
<BR>
<table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10"> 


<tr> <td > <A href="adminprison.jsp"> Prison Details </a> </td>
<td > <A href="adminprisonlist.jsp"> Prison List </a> </td> </tr>

<tr> <td > <A href="adminprisoner.jsp"> Prisoner Details </a> </td>
<td > <A href="adminprisonerlist.jsp"> Prisoner List </a> </td> </tr>
<tr> <td > <A href="adminstaff.jsp"> Officers Details </a> </td> 
<td > <A href="adminstafflist.jsp"> Officer List </a> </td> </tr>
<tr> <td > <A href="adminstationstaff.jsp"> Prison Staff Allotment </a> </td>
<td > <A href="adminstationstafflist.jsp"> Prison Staff List </a> </td> </tr>
<tr> <td > <A href="adminpatient.jsp"> Infirmary(Patient) Details </a> </td> 
<td > <A href="adminpatientlist.jsp"> Infirmary(Patient) List </a> </td> </tr>

<tr> <td > <A href="admincasetype.jsp"> Case Type Details </a> </td> 
<td > <A href="admincasetypelist.jsp"> Case Type List </a> </td> </tr>
<%--<td > <A href="admincaselist.jsp"> Filed Case List </a> </td> </tr>--%>
<tr> <td > <A href="admincourt.jsp"> Court Visit </a> </td>
<td > <A href="admincourtlist.jsp"> Court Visit List </a> </td> </tr>
<tr><td > <A href="empvisitorlist.jsp"> Visitor List </a> </td>  <td > <A href="index.html"> Logout </a> </td> </tr>

</table>

    </body>
</html>
