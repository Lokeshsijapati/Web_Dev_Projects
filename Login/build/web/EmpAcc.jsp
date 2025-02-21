<!--    Document   : EmpAcc
    Created on : Jan 16, 2025, 1:46:44 PM
    Author     : lokesh
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    int uniqId = (int) Math.floor(Math.random() * 100);
    String name = request.getParameter("name");
    String userid = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/officeleave", "root", "");
        Statement st = conn.createStatement();

        int i = st.executeUpdate("insert into employers(uniqueId, name, userId, password) values('" + uniqId + "','" + name + "','" + userid + "','" + password + "')");
%>
            <script>
                alert("Id Creation has been Successfull");
                window.location.href = "Admin.jsp";
            </script>
<%
    } catch (Exception e) {
        System.out.println(e);
%>
        <script>
            alert("Error: Id creation is not possible");
        </script>
<%
    }
%>



