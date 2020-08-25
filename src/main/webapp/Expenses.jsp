<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isELIgnored = "false" %>

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

    .main_container {
    
        border-radius: 5px;
        height: 100px;
        padding:50px;
    }

    .form_container{
        margin-top: 100px;
        margin-left: 350px;
        
    }
    input{
        border-radius: 5px;
    }
    .first_col {
        float:left;        
        width: 25%;
        margin-top: 1px;
        margin-bottom: 2px;
    }

    .second_col{
        float: left;
        width: 70%;
        margin-top: 1px;
        margin-bottom: 2px;
    }

    .row{
        margin-bottom: 2px;
    }

    .first-button {
        width:150px;
        margin-top: 20px;
        background-color: #4c7aaf;
        color: lightyellow;
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

    <div class="main_container">

        <div class="form_container">

            <form action="save">
    
                <div class="row">
                    <div class="first_col">
                        <label for="title">Title</label>
                    </div>
                    <div class="second_col">
                        <input type="text" name="title" id="title" required>
                    </div>
                    
                </div>
                <br>
        
                <div class="row">
                    <div class="first_col">
                        <label for="description">Description</label>
                    </div>
                    <div class="second_col">
                        <input type="text" name="description" id="description">
                    </div>
                </div>
                <br>
        
                <div class="row">
                    <div class="first_col">
                        <label for="category">Category</label>
                    </div>
                    <div class="others">
                        <select id="category" name="category">
                            <option value="travel">Travel</option>
                            <option value="shopping">Shopping</option>
                            <option value="food">Food</option>
                            <option value="movie">Movie</option>
                            <option value="grocery">Grocery</option>
                        </select>
                    </div>
                </div>
                <br>

                <div class="row">
                    <div class="first_col">
                        <label for="expenseAmount">Amount Spent</label>
                    </div>
                    <div class="second_col">
                        <input type="number" name="expenseAmount" id="expenseAmount">
                    </div>
                </div>
                <br>
        
        
                <div class="row">
                    <div class="first_col">
                        <label for="expenseDate">Expense Date</label>
                    </div>
                    <div class="second_col">
                        <input type="date" name="expenseDate" id="expenseDate" required>
                    </div>
        
                 <!-- <input type="hidden" name="id" id="id" value="${id}"/> -->
                
                    
                </div>
                <br>
                <button type="submit" class="first-button">Save</button>
                <br>
            </form>
        </div>
            
        
    </div>
    
</body>
</html>