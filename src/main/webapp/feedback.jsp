<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      background-color: lightyellow;
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

    .container {
  padding: 16px;
  background-color: white;

  margin-left: 100px;
  margin-top: 60px;
}

.submitbtn:hover {
  opacity:1;
}

.submitbtn {
  background-color: #4c7aaf;
  color: white;
  padding: 10px 10px;
  margin: 5px 5px 5px 5px;
  border: none;
  width: 30%;
  opacity: 0.9;
  margin-left: 150;
}
</style>
<body>

    <div class="topnav">
        <p>Expense Tracker Application</p>
        <a href="/logout">Logout</a>
        <a href="/report">Report</a>
        <a href="/feedback">Feedback</a>
        <a href="/listofexpenses">Your Expenses</a>
        <a href="/addexpense">Add Expense</a>
       
      </div>


      <form action="submitFeedback">
        <div class="container">
          <h1>Your views are important to us</h1>
          
      
          <label for="feedback"><b>Feedback</b></label>
          <input type="text" placeholder="Type your feedback here" name="feedback" id="feedback" required>
          <br>
          <input type="submit" class="submitbtn" value="Send Feedback">
          <br>
          <p>${obj}</p>
        </div>
        
      </form>

</body>
</html>