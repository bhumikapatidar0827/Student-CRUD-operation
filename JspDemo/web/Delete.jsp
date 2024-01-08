<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="mymenu2.jsp" %>
    <div id="mydata">
<center>
<form action="Delete.jsp">
<table cellpadding="12">
<tr>
<td>Enter Roll No.</td>
<td><input type="text" placeholder="Enter RollNo" class="A" name="u1">
</tr>

<tr>
<th colspan="2"><input type="submit" value="Delete" class="B" name="b1"></th>
</tr>
</table>
</form>
</center>
<%
    String s1=request.getParameter("b1");
    if(s1!=null){
        String s11=request.getParameter("u1");
       try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql:///sita?useSSL=false","root","root");
			 Statement st=con.createStatement();
		       int x=  st.executeUpdate("delete from insmarks where urno='"+s11+"'");
                      response.sendRedirect("Showall.jsp"); 
                      con.close();
                     }  
       catch(Exception e){
           out.println(e);
       }
    }          
       %>