<%@page import="java.sql.*" %>
<%		try{

    String s1=request.getParameter("un");
    String s2=request.getParameter("up");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///sita?useSSL=false","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("insert into login values('"+s1+"','"+s2+"')");
			out.println("Data Insert..");
			con.close();
		}
		catch(Exception e){
			out.println(e);
		}
%>