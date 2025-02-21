<%-- 
    Document   : index
    Created on : Jan 15, 2025, 6:56:39 PM
    Author     : lokesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap demo</title>
  <link rel="stylesheet" href="css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
  <nav class="navbar bg-white">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="images/logo.png" alt="Logo" width="50" height="40" class="d-inline-block">
        <b class="text-center">INfOTECH</b>
      </a>
    </div>
  </nav>
  <hr class="mt-1 mb-1">
  <main>
    <div class="pannels">
      <div class="employeSign">
        <div class="login-container">
          <div class="login-box">
              <div class="login-header">
                  <h2>Employe Login</h2>
                  <p>Welcome back! Please login to continue.</p>
              </div>
              <form id="login-form" method="post" action="Emplog.jsp">
                  <div class="form-group">
                      <input type="text" id="username" name="username" placeholder="Username" required>
                      <label for="username" class="label">Username</label>
                  </div>
                  <div class="form-group">
                      <input type="password" id="password" name="password" placeholder="Password" required>
                      <label for="password" class="label">Password</label>
                  </div>
                  <button type="submit" class="login-btn">Login</button>
              </form>
              <div class="social-login">
                  <p>Or login with:</p>
                  <div class="social-icons">
                      <a href="#" class="facebook"><i class="fa-brands fa-facebook"></i></a>
                      <a href="#" class="google"><i class="fa-brands fa-google"></i></a>
                      <a href="#" class="twitter"><i class="fa-brands fa-twitter"></i></a>
                  </div>
              </div>
          </div>
      </div>
      </div>
      <div class="employe">
        <div class="emp-image">
          <img src="images/employeLogo.png" alt="">
        </div>
        <div class="emp-btn">
          <button onclick="Empl()">Login</button>
        </div>
      </div>
      <div class="admin">
        <div class="adm-image">
          <img src="images/adminLogo.png" alt="">
        </div>
        <div class="adm-btn">
          <button onclick="Adm()">Login</button>
        </div>
      </div>
      <div class="adminLogin">
        <div class="login-container">
          <div class="login-box">
              <div class="login-header">
                  <h2>Admin Login</h2>
                  <p>Welcome back! Please login to continue.</p>
              </div>
              <form id="login-form2" method="post" action="Adminpage.jsp">
                  <div class="form-group">
                      <input type="text" id="username2" class="lokesh" name="username" placeholder="Username" required>
                      <label for="username" class="label">Username</label>
                  </div>
                  <div class="form-group">
                      <input type="password" id="password2" name="password" placeholder="Password" autofill="off" autocomplete="off" required>
                      <label for="password" class="label">Password</label>
                  </div>
                  <button type="submit" class="login-btn">Login</button>
              </form>
              <div class="social-login">
                  <p>Or login with:</p>
                  <div class="social-icons">
                      <a href="#" class="facebook"><i class="fa-brands fa-facebook"></i></a>
                      <a href="#" class="google"><i class="fa-brands fa-google"></i></a>
                      <a href="#" class="twitter"><i class="fa-brands fa-twitter"></i></a>
                  </div>
              </div>
          </div>
      </div>
      
      
      </div>
    </div>
  </main>


  <script src="js/style.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
    crossorigin="anonymous"></script>
</body>

</html>