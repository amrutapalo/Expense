<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Expenses</title>
</head>

<style>


    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
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
    body{
      text-align: center;
    }

    th {
  background-color: #4c7aaf;
  color: white;
  height: 60px;
  }

  th, td {
  border-bottom: 1px solid #ddd;
  padding: 15px;
}

  td{
    text-align: left;
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


      <div class="table_container">
        <h2>Expense List</h2>
        <table class="expense_table" id="expense_table" align = "center">
            <tr>
                <th width="10%">Title</th>
                <th width="20%">Description</th>
                <th width="20%">Category</th>
                <th width="10%">Amount</th>
                <th width="10%">Date</th>
            </tr>
            <input type="hidden" name="id" id="id" value="${id}"/>

            <c:forEach items="${listofexpenses}" var="counter">
            <tbody>
                <tr>
                    <td>${counter.title}</td>
                    <td>${counter.descripton}</td>
                    <td>${counter.category}</td>
                    <td>${counter.expenseAmount}</td>
                    <!-- <td>${counter.expensedate}</td> -->
                    <td><fmt:formatDate type = "date" 
                      value = "${counter.expensedate}" /></td>
                    </tr>
                    </c:forEach>
            </tbody>            
        </table>

      </div>
          
            
    
</body>
</html>