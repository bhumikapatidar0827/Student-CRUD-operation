
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="mymenu2.jsp" %>
    <%
        try{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql:///sita?useSSL=false","root","root");
			 Statement st=con.createStatement();
		         ResultSet rs =	st.executeQuery("select * from insmarks");
		        
        %>
        <div id="mydata">
            <center>
                <table cellpadding="12">
                    <tr>
                        <td>URNO</td>
                        <td>UNAME</td>
                        <td>UPHY</td>
                        <td>UCHEM</td>
                        <td>UMATHS</td>
                        
                    </tr>
               
        <%
        while(rs.next())
        {
            %>
<tr>
    <td><%=rs.getString(1)%> </td>
    <td><%=rs.getString(2)%> </td>
    <td><%=rs.getString(3)%> </td>
    <td><%=rs.getString(4)%> </td>
    <td><%=rs.getString(5)%> </td>
</tr>
<%
        }
        con.close();
        }
        catch(Exception e){
            out.println(e);
        }
%>
       </table>
            </center>
        </div>      
</body>
</html>