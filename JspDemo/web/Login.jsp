<%@include file="mymenu1.jsp" %>
<html>
<div id="mydata">
<center>
    <%
       String s =request.getParameter("s1");
       if(s!=null){
     
        %>
       <%=s%>
       <%}
       %>
<form action="Login2.jsp">
<table cellpadding="12">
<tr>
<td>Enter Name</td>
<td><input type="text" placeholder="Enter Name" class="A" name="u1"></td>
</tr>
<tr>
<td>Enter Password</td>
<td><input type="password" placeholder="Enter Password" class="A" name="u2"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" value="Login" class="B">
</tr>
</table>
</form>
</center>
</div>
</body>
</html>
