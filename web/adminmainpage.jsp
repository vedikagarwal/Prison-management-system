<%@ include file="connfile.jsp"%>

<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
		rst=stmt.executeQuery("select * from AdminloginTab where uName= '" + t1 + "' and pWord='" + t2 + "'");
		
                if (rst.next())
                {out.println("Login Successful");
                response.sendRedirect("adminmainpage1.jsp");
                 }
                
                
                else
                {out.println("User Name or Password is not correct");
                }

%>

