<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback</title>
</head>
<style>
    
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


      <form action="submitFeedback">
        <div class="container">
          <h1>Your views are important to us</h1>
          
      
          <label for="feedbackText"><b>Feedback</b></label>
          <input type="text" placeholder="Type your feedback here" name="feedbackText" id="feedbackText" required>
          <br>
          <input type="submit" class="submitbtn" value="Send Feedback">
          <br>
          <p>${obj}</p>
          
        </div>
      </form>
      
            

</body>
</html>