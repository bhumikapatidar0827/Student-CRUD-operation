<%@page import="java.sql.*"%>              
<%String s1=request.getParameter("u1");
		String s2=request.getParameter("u2");
	     try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql:///sita?useSSL=false","root","root");
			 Statement st=con.createStatement();
		         ResultSet rs=st.executeQuery("select * from login where uname='"+s1+"'and upass='"+s2+"'");
			  if(rs.next()){
                              //Cookie ck=new Cookie("uname",s1);
                              //ck.setMaxAge(60*60);
                             // response.addCookie(ck);
                              HttpSession Session =request.getSession();
                              Session.setAttribute("uname",s1);
			      response.sendRedirect("mymenu.jsp");
			  }
			  else{
				 response.sendRedirect("Login.jsp?s1=Invalid UserName and Password");
			  }
			  con.close();
			
		 }
		 catch(Exception e){
			out.println(e);
		 }
             %>