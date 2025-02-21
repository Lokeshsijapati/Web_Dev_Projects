<%-- 
    Document   : Admin
    Created on : Jan 15, 2025, 9:01:49 PM
    Author     : lokesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%   try
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/officeleave", "root", "");
Statement st=conn.createStatement(); 
ResultSet resultSet = st.executeQuery("SELECT * FROM admin");
if(resultSet.next()){
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
    integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/admin.css">
</head>

<body>
  <nav class="navbar bg-white">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="images/logo.png" alt="Logo" width="50" height="40" class="d-inline-block">
        <b class="text-center">INfOTECH</b>
      </a>
        <select onchange="lokesh()">
        <option value="userName"><%out.print(resultSet.getString("name"));%></option>
            <option value="Logout">LogOut</option>
            <option value="About">About</option>
        </select>
    </div>
  </nav>
 <%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  <main class="adminPage">
    <div class="middle">
      <div class="container formpage">
        <div class="signup-form">
            <h2>Signup</h2>
            <form method="post" action="EmpAcc.jsp">
                <div class="input-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="input-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="input-group">
                    <label for="confirm-password">Confirm Password</label>
                    <input type="password" id="confirm-password" name="confirm-password" required>
                </div>
                <button type="submit">Signup</button>
            </form>
        </div>
    </div>

      <div class="crEmp">
        <div class="emp-images">
          <img src="images/crAcc.png" alt="" onclick="employe()">
        </div>
        <div class="title">
          <h3>Create</h3>
          <h3>Employe Account</h3>
        </div>
      </div>
<!--      <div class="Leaves">
        <div class="leave-images">
          <a href="leave.jsp"><img src="images/offLeave.png" alt=""></a>
        </div>
        <div class="title">
          <h3>Leave</h3>
          <h3>Application</h3>
        </div>
      </div>-->
      <div class="admin-detail">
        <div class="admin-image">
            <a href="adminDetail.jsp" target="target">  <img src="images/admin.png" alt=""></a>
        </div>
        <div class="title">
          <h3>Admin</h3>
          <h3>Presonal-Detail</h3>
        </div>
      </div>
    </div>
  </main>
   <script src="js/admin.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
    crossorigin="anonymous"></script>
</body>

</html>
