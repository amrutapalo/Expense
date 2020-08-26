<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      background-color: white;
    }
    
    .topnav {
      overflow: hidden;
      background-color: #333;
    }
    
    .topnav a {
      float: right;
      color: #f2f2f2;
      text-align: center;
      padding: 21px 16px;
      text-decoration: none;
      font-size: 17px;
    }
    
    .topnav a:hover {
      background-color: #ddd;
      color: black;
    }
    
    .topnav p{
    	float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 7px 16px;
      text-decoration: none;
      font-size: 17px;      
    }

</style>
<head>
<meta charset="UTF-8">
<title>Expense Report</title>
</head>
<body>

    <div class="topnav">
        <p>Expense Tracker Application</p>
        <a href="/logout">Logout</a>
        <a href="/report">Report</a>
        <a href="/feedback">Feedback</a>
        <a href="/listofexpenses">Your Expenses</a>
        <a href="/addexpense">Add Expense</a>
        
      </div>

</body>
</html>