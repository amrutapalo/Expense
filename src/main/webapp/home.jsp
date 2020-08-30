<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expense Tracker</title>
</head>
<style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: white;
    }
    
    h3{
      text-align: center;
      color: rgb(226, 230, 240);
      margin-top: 150px;
      font-size:1in;
      letter-spacing: 1px;
      background-color: #4c7aaf;
      
    }
    /* h2{
      text-align: center;
      color: #333;
      letter-spacing: 1px;
      color: darkcyan; 
      font-size:large;
    } */

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

    .login_button:hover{
      opacity: 1;
    }

    .register_button:hover{
      opacity: 1;
    }
    
    </style>
    </head>
    <body>
    
      <h3>
        EXPENSE TRACKER
      </h3>
      <br>
      <!-- <h2>
      Track your expenses easily
      </h2> -->
    <br>
    <form action="/register">
      <input type="submit" id="register_button" class="register_button" value="Register">
    </form>
    
    <form action="/login">
      <input id="login_button" class="login_button" type="submit" value="Login">
    </form>

    </body>
</html>