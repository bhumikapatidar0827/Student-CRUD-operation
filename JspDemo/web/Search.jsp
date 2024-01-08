<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="mymenu2.jsp" %>
    <div id="mydata">
         <%
       String s =request.getParameter("s1");
       if(s!=null){
           
     
        %>
       <%=s%>
       <%}
       %>
<center>
<form action="Search.jsp">
<table cellpadding="12">
<tr>
<td>Enter Roll No.</td>
<td><input type="text" placeholder="Enter RollNo" class="A" name="u1">
</tr>

<tr>
<th colspan="2"><input type="submit" value="Search" class="B" name="b1"></th>
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
		         ResultSet rs =	st.executeQuery("select * from insmarks where urno='"+s11+"'");
       
                         if(rs.next()){
                             %>
                             <center>
                             <table cellpadding="12">
                                 <tr>
                                     <td>URNO</td>
                                     <td><%=rs.getString(1)%></td>
                                 </tr>
                                  <tr>
                                     <td>UNAME</td>
                                     <td><%=rs.getString(2)%></td>
                                 </tr>
                                  <tr>
                                     <td>UPHY</td>
                                     <td><%=rs.getString(3)%></td>
                                 </tr>
                                  <tr>
                                     <td>UCHEM</td>
                                     <td><%=rs.getString(4)%></td>
                                 </tr>
                                  <tr>
                                     <td>UMATHS</td>
                                     <td><%=rs.getString(5)%></td>
                                 </tr>
                             </table>
                         
                                 
                                     <%
                         }                         else{
				   response.sendRedirect("Search.jsp?s1=Invalid Roll no");
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
  

