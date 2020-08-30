<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isELIgnored = "false" %>
<%@ include file="header.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Expense</title>
</head>
<style>

    h1{
        font-size: large;
        color: #4c7aaf;
        margin-bottom: 30px;
    }
    
    .form_container{
        padding: 16px;
         background-color: white;
  
        margin-left: 100px;
         margin-top: 60px;
    }
    label{
      float:left;
      padding: 3px;
      margin-bottom: 10px;
      width: 25%;
  }
  
  input,#category{
      padding: 3px;
      margin-bottom: 10px;
      float: left;
      width: 50%;
      height: 30px;
  }

  .add-button:hover {
    opacity:1;
  }
  
  .add-button {
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

            <form action="save">
                <div class="form_container">
                        <h1>Add your expense here</h1>
                        <label for="title">Title</label>
                        <input type="text" name="title" id="title" required>
                
                        <br>
        
                
                        <label for="description">Description</label>
                        <input type="text" name="description" id="description">
                    
                        <br>
        
                
                        <label for="category">Category</label>
                    
                        <select id="category" name="category">
                            <option value="Cab">Cab</option>
                            <option value="Coffee">Coffee</option>
                            <option value="Food">Food</option>
                            <option value="Grocery">Grocery</option>
                            <option value="Hotel">Hotel</option>
                            <option value="Movie">Movie</option>
                            <option value="Rickshaw">Rickshaw</option>
                            <option value="Shopping">Shopping</option>
                            <option value="Taxi">Taxi</option>
                            <option value="Travel">Travel</option>
                        </select>
                    
                    <br>

                
                        <label for="expenseAmount">Amount Spent</label>
                        <input type="number" name="expenseAmount" id="expenseAmount">
                    
                    <br>
               
                        <label for="expenseDate">Expense Date</label>
                        <input type="date" name="expenseDate" id="expenseDate" required>
                    
        
                 <!-- <input type="hidden" name="id" id="id" value="${id}"/> -->
                    <br>
                        <button type="submit" class="add-button">Save</button>
                    <br>
                        <p>${obj}</p>
                </div>
            </form>
        
            
        
    
</body>
</html>