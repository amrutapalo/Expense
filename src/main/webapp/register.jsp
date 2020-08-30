<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.container {
  padding: 16px;
  background-color: white;

  margin-left: 100px;
  margin-top: 60px;
}

.registerbtn:hover {
  opacity:1;
}

.registerbtn {
  background-color: #4c7aaf;
  color: white;
  padding: 10px 10px;
  margin: 5px 5px 5px 5px;
  /* margin: 8px 0; */
  border: none;
  /* cursor: pointer; */
  width: 30%;
  opacity: 0.9;
  margin-left: 150;
}

.topnav {
      overflow: hidden;
      background-color: #333;
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

span{
	color:red;
}
    

</style>
<body>
    <div class="topnav">
        <p>Expense Tracker Application</p>
    </div>

    <form onsubmit="return registrationdone()" action="registrationdone" method="post">
        <div class="container">
          <h1>Register</h1>
          <p>Please fill in this form to create an register</p>
          
      
          <label for="name"><b>Name</b></label>
          <input type="text" placeholder="Enter Name" name="name" id="name">
          <br>
          <label for="mobile_number"><b>Mobile Number</b></label>
          <input type="tel" placeholder="Your 10-digit mobile number is your unique user id"
          name="id" id="id" pattern="[0-9]{10}">
          <span>${errorMessage}</span>
          <br>
          <label for="email"><b>Email</b></label>
          <input type="text" placeholder="Enter Email" name="email" id="email">
            <br>
          <label for="password"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="password" id="password">
            <br>
      
          <input type="submit" class="registerbtn" value="Register">
        </div>
        
      </form>
</body>
</html>

<script>

  function registrationdone(){
    
    //var userId=document.getElementById("id");
    var password=document.getElementById("password");
    var email=document.getElementById("email");
    var name=document.getElementById("name");

    if(password.value.trim() == "" || email.value.trim()== "" || name.value.trim()==""){
      alert("Please enter all the details to register");
        return false;
    }

    // if( userId.value == "" ){
    //     alert("Please enter the user id");
    //     return false;
    // }else if(password.value == ""){
    //   alert("Please enter the password");
    //     return false;
    // }

  }
  
  </script>