<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="mymenu2.jsp" %>
    <div id="mydata">
<center>
<form action="Update.jsp">
<table cellpadding="12">
<tr>
<td>Enter Roll No.</td>
<td><input type="text" placeholder="Enter RollNo" class="A" name="n1">
</tr>

<tr>
<th colspan="2"><input type="submit" value="Upload" class="B" name="b1"></th>
</tr>
</table>
</form>
</center>
<%
    String s1=request.getParameter("b1");
    if(s1!=null){
        String s11=request.getParameter("n1");
       try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql:///sita?useSSL=false","root","root");
			 Statement st=con.createStatement();
		         ResultSet rs =	st.executeQuery("select * from insmarks where urno='"+s11+"'");
                             if(rs.next()){
                             %>
                             <center>
                                 <form action="Update.jsp">
                             <table cellpadding="12">
                                 
                                     <td>URNO</td>
                                     <td><input type="text" value=<%=rs.getString(1)%> name="n1"></td>
                                 
                                  <tr>
                                     <td>UNAME</td>
                                     <td><input type="text" value=<%=rs.getString(2)%> name="n2" ></td>
                                 </tr>
                                  <tr>
                                     <td>UPHY</td>
                                     <td><input type="text" value=<%=rs.getString(3)%> name="n3" ></td>
                                 </tr>
                                  <tr>
                                     <td>UCHEM</td>
                                     <td><input type="text" value=<%=rs.getString(4)%> name="n4" ></td>
                                 </tr>
                                  <tr>
                                     <td>UMATHS</td>
                                     <td><input type="text" value=<%=rs.getString(5)%> name="n5" ></td>
                                 </tr>
                                 <tr>
                                     <th colspan="2"><input type="submit" name="b2" class="B" value="Update"></th>
                                 </tr>
                             </table>
                             </form>
                            
         
                                     <%
                         }                         else{
				  out.println("Invalid RollNo");
			  }
                                     con.close();
                         }
                         catch(Exception e){
                                 out.println(e); 
                                 }}
                         %>
                          
 </center>                   
 </div>
</body>
</html>
<%
    String s2=request.getParameter("b2");
    if(s2!=null){
        String s21=request.getParameter("n1");
        String s22=request.getParameter("n2");
        String s23=request.getParameter("n3");
        String s24=request.getParameter("n4");
        String s25=request.getParameter("n5");
         try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql:///sita?useSSL=false","root","root");
			 Statement st=con.createStatement();
			 st.executeUpdate("update insmarks set uname='"+s22+"',uphy='"+s23+"',uchem='"+s24+"',umaths='"+s25+"'where urno='"+s21+"'");
		    response.sendRedirect("Showall.jsp");
			con.close();
			
		 }
		 catch(Exception e){
		 out.println(e);
		 }
    }
    %>

