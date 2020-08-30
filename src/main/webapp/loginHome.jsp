<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<style>

    h3{
      text-align: center;
      color: #4c7aaf;
      margin-top: 100px;
      margin-bottom:5px;
      font-size:1cm;
      letter-spacing: 1px;
      
    }

    .check_report{
      text-align: center;
      background-color: #4c7aaf;
      color: white;
      padding: 5px 5px;
      margin: 3px 5px 10px 420px;
      width: 30%;
      opacity: 0.9;
      float:left;
      font-size: large;
      
      
    }

    .check_report:hover{
      opacity: 1;
    }

    
</style>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

      <h3>
        Start tracking your expenses and take control of your spending
      </h3>

      <br>
    <form action="/report">
      <input type="submit" id="check_report" class="check_report" value="Check where it is peaking!">
    </form>

    <img src="/images/money.png" alt="money" style="width:100%;height:300px; margin-top: 10px"/>

</body>
</html>