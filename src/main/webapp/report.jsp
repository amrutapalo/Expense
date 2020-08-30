<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp"%>


<!DOCTYPE html>
<html>
<style>

       
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
  		padding: 5px;
      
		}
    #expense_report_table{
      width: 35%;
      border: 2px solid #333;
      margin-left: 15px;
    }
	
	#container{
    width: 45%;
		height:500px;
    margin-left: 23px;
	}	
</style>
<head>
<meta charset="UTF-8">
<title>Expense Report</title>
</head>
<body>
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
                   },    
                yAxis: {
                    title: {
                        text: 'In Rupees(Rs.)'
                    }
                },
                series: [{
                    name: 'Amount',
                    data: ${map.values()}
                }]          
       })
        
        });
        
        
        
        </script>
      

</body>
</html>





        