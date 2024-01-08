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
<form action="InsDemo2.jsp">
<table cellpadding="12">
<tr>
<td>Enter Roll No.</td>
<td><input type="text" placeholder="Enter Roll No." class="A" name="u1"></td>
</tr>
<tr>
<td>Enter Name</td>
<td><input type="text" placeholder="Enter Name" class="A" name="u2"></td>
</tr>
<tr>
<td>Enter Phy</td>
<td><input type="text" placeholder="Enter Phy" class="A" name="u3"></td>
</tr>
<tr>
<td>Enter Chem</td>
<td><input type="text" placeholder="Enter Chem" class="A" name="u4"></td>
</tr>
<tr>
<td>Enter Maths</td>
<td><input type="text" placeholder="Enter Maths" class="A" name="u5"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" value="Insert" class="B">
</tr>
</table>
</form>
</center>
</div>
</body>
</html>
