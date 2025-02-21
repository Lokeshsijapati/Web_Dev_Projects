<%-- 
    Document   : Adminpage
    Created on : Jan 15, 2025, 7:01:51 PM
    Author     : lokesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%  
    String User=request.getParameter("username");
    String Password=request.getParameter("password");
    String id=null;
    String password=null;
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/officeleave", "root", "");
    Statement st=conn.createStatement(); 
    ResultSet resultSet = st.executeQuery("SELECT * FROM employers WHERE userId='"+User+"'");
    if(resultSet.next()){
    id=resultSet.getString("userId");
    password=resultSet.getString("password");
    }
    if(User.equalsIgnoreCase(id) && Password.equalsIgnoreCase(password)){
    %>
    <script>
    alert("Your Password is correct");
    window.location.href="employe.jsp";
    </script>
    <%}
    else{
    %>
    <script>
    alert("password incorrect");
    window.location.href="index.jsp";
    </script>
    <% 
    }
    }catch(Exception e){
   System.out.print(e);
    }
    %>
