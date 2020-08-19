<%@include file = "connfile.jsp"%>
<%

String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
session.setAttribute( "empcodevar", "" );
session.setAttribute( "stationvar", "" );
rst=stmt.executeQuery("select * from empTab where empcode= '" + t1 + "' and pWord='" + t2 + "'");

if (rst.next())
{out.println("Login Successful");
session.setAttribute( "empcodevar", t1 );

rst=stmt.executeQuery("select stationName from StationStaffTab where empcode= '" + t1 + "'");
if (rst.next())    
{
    session.setAttribute( "stationvar", rst.getString(1) );
response.sendRedirect("empmainpage.jsp");
}
else
{out.println("User Name or Password is not correct or you don't have permission");
}

}


else
{out.println("User Name or Password is not correct");
}

%>
