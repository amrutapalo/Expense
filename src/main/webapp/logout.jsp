<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>

<style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: rgb(213, 217, 255)223, 165, 165;
    }
    
    h3{
      text-align: center;
      color:#4c7aaf;
      margin-top: 150px;
      font-size:large;
      letter-spacing: 1px;      
    }

    .register_button{
      text-align: center;
      background-color: #4c7aaf;
      color: white;
      padding: 5px 5px;
      margin: 5px 5px 5px 230px;
      width: 30%;
      opacity: 0.9;
      float:left;
      font-size: large;
      
    }


    .login_button{
      text-align: center;
      background-color: #1e3d61;
      color: white;
      padding: 5px 5px;
      margin: 5px 5px 5px 10px;
      width: 30%;
      opacity: 0.9;
      font-size: large;

    }
    
    </style>
<body>
    


    <h3>
        You have been logged out successfully!
      </h3>
      <br>
    <br>
    <form action="/register">
      <input type="submit" id="register_button" class="register_button" value="Register">
    </form>
    
    <form action="/login">
      <input id="login_button" class="login_button" type="submit" value="Login">
    </form>
</body>
</html>