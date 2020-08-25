<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<style>
  body {
    font-family: Arial, Helvetica, sans-serif;
  }
  
  .container {
    padding: 16px;
    background-color: white;
  
    margin-left: 100px;
    margin-top: 60px;
  }
  
  .registerbtn:hover {
    opacity:1;
  }
  
  .registerbtn {
    background-color: #4c7aaf;
    color: white;
    padding: 10px 10px;
    margin: 5px 5px 5px 5px;
    border: none;
    width: 30%;
    opacity: 0.9;
    margin-left: 150;
  }
  
  .topnav {
        overflow: hidden;
        background-color: #333;
  }
  
  .topnav p{
      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 7px 16px;
      text-decoration: none;
      font-size: 17px;   
  }
  
  label{
      float:left;
      padding: 3px;
      margin-bottom: 10px;
      width: 25%;
  }
  
  input{
      padding: 3px;
      margin-bottom: 10px;
      float: left;
      width: 50%;
  }
      
  
  </style>
  <body>
      <div class="topnav">
          <p>Expense Tracker Application</p>
      </div>
  
      <form action="loginValidate">
          <div class="container">
            <h1>Login</h1>
            
            <label for="mobile_number"><b>User ID</b></label>
            <input type="tel" placeholder="Your 10-digit mobile number is your user id" 
            name="id" id="id" required>
            <br>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" id="password" required>
              <br>
            
            <input type="submit" class="registerbtn" id="registerbtn" value="Login">
          </div>
          
        </form>
        
    </body>
  
</html>