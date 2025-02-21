<%-- 
    Document   : adminDetail
    Created on : Feb 21, 2025, 10:58:20 PM
    Author     : lokesh
--%>
<%@page import="java.sql.*"%>
<%
    try {
        String User = "lokesh";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/officeleave", "root", "");
        Statement st = conn.createStatement();
        ResultSet resultSet = st.executeQuery("SELECT * FROM admin WHERE name='" + User + "'");
        if(resultSet.next()) {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/admins.css"/>
    </head>
    <body>
        <nav class="navbar">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="images/RLogo.png" alt="Logo" width="50" height="40" class="d-inline-block">
                    <b class="text-center">INfOTECH</b>
                </a>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="container Admin">
                <h1>Admin Presonal Detail</h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <td><%out.print(resultSet.getString("name"));%></td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td><%out.print(resultSet.getString("userId"));%></td>
                    </tr>
                    <tr>
                        <th>Mobile-No</th>
                        <td><%out.print(resultSet.getLong("Mobile_No"));%></td>
                    </tr>
                    <tr>
                        <th>Address</th>
                        <td><%out.print(resultSet.getString("Address"));%></td>
                    </tr>
                    <tr>
                        <th>Pin-code</th>
                        <td><%out.print(resultSet.getInt("PinCode"));%></td>
                    </tr>
                </table>       
                <%
                        }
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    </body>
</html>
