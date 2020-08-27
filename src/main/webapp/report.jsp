<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    
       
    th {
		  background-color: #4c7aaf;
		  color: white;
		  height: 60px;
		  }
		
	th, td {
		  border-bottom: 1px solid #ddd;
		  padding: 15px;
		}
		
	.column {
  		float: left;
 		 width: 45%;
  		padding: 5px;
		}
	
	#container{
		height:500px;
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

        <h2></h2>
        <table class="column" id="expense_report_table">
            <tr>
                <th width="30%">Category</th>
                <th width="20%">Expense</th>
                
            </tr>

            <c:forEach items="${expenseReport}" var="counter">
            <tbody>
                <tr>
                    <td>${counter[0]}</td>
                    <td>${counter[1]}</td>
                    </tr>
                    </c:forEach>
            </tbody>            
        </table>

      <div id="container" class="column">
      		${map.keySet()}
      
      </div>

	   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
      <script src="https://code.highcharts.com/highcharts.js"></script>
      <script src="https://code.highcharts.com/modules/exporting.js"></script>

      <script>
        $(document).ready(function(){


		
















            

        	Highcharts.chart('container', {
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Expenses'
                },
                xAxis: {
                    categories: ${map.keySet()}
                    //categories:['movie', 'food', 'travel', 'shopping', 'grocery']
                    //crosshair: true
                   },
                	    
                yAxis: {
                    title: {
                        text: 'Amount(Rs.)'
                    }
                },
                series: [{
                    //name: 'Amount',
                    data: ${map.values()}
                    //data:[200,300]
                }]
              
       })
        

        });
        
        
        
        </script>
      

</body>
</html>





        