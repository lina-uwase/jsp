<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<div class="container">
  <jsp:include page="headeradmin.jsp"><jsp:param
          name="title" value="Create Parent" />
  </jsp:include>
</div>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <style>
    body {
      background-color: #f2f2f2;
    }

    /*.container {*/
    /*	margin: 50px auto;*/
    /*	margin-top: 10%;*/
    /*	width: 400px;*/
    /*	height: 400px;*/
    /*	background-color: #ffffff;*/
    /*	padding: 20px;*/
    /*	border-radius: 5px;*/
    /*	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);*/
    /*	position: relative;*/
    /*	justify-content: center;*/
    /*	display: flex;*/
    /*	flex-direction: column;*/
    /*}*/
    form {
      width: 30vw;
      height: 80vh;
      margin-left: auto;
      margin-right: auto;
      margin-top: 2em;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);

    }
    .container img {
      position: absolute;
      top: -50px;
      left: 50%;
      transform: translateX(-50%);
      width: 100px;
      height: 100px;
      border-radius: 50%;
      background-color: #ffffff;
      padding: 5px;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }

    h2{
      text-align: center;
      color: #333333;
      font-family: 'Quicksand', sans-serif;
      margin-top: 10px;
    }
    p,a{
      text-align: center;
      font-family: 'Quicksand', sans-serif;
      text-decoration: none;
    }

    input[type="text"], input[type="password"],input[type="date"],input[type = "number"] {
      width: 85%;
      height: 40px;
      padding: 10px;
      margin-bottom: 15px;
      margin-left: 35px;
      border:1px solid black;
      border-radius: 5px;
      background-color: white;
      color: #333333;
      font-size: 16px;

    }

    input[type="submit"] {
      width: 85%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      margin-left: 35px;
      margin-top: 10px;
      background-color: green;
      color: #ffffff;
      font-size: 16px;
      cursor: pointer;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }
    label {
      padding-left: 35px;
      padding-top: 15px;

    }
    button {
      width: 85%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      margin-left: 35px;
      background-color: green;
      color: #ffffff;
      font-size: 16px;
      cursor: pointer;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    }
    p{
      padding-top: 8px;
    }
  </style>
</head>
<body>
<div id="middle">
  <h3 style="text-align: center; padding-top: 32px; ">
    <b>Enter Parent Details</b>
  </h3>
  <c:if test="${message != null}">
    <fieldset>
      <h3>
        <span style="color: green"> ${message}</span>
      </h3>
    </fieldset>
  </c:if>
  <form action="createparent.php?page=createparent" method="post" class="form-group">
    <label for="firstname">Firstname: </label>
    <input type="text" size="25" maxlength="50"
           name="firstname" id="firstname" class="form-control"/>

    <label for="lastname">Lastname: </label>
    <input type="text" size="50"
           maxlength="50" name="lastname" id="lastname" class="form-control" />

    <label for="dob">Date of Birth: </label>
    <input type="date" name="dob" id="dob" class="form-control"/>

    <label for="email">Email</label>
    <input type="text" size="50" maxlength="50"
           name="email" id="email" class="form-control"/>

    <label for="phonenumber">Phone Number: </label>
    <input type="number" name="phonenumber" id="phonenumber" class="form-control" />

    <label>
      <input type="radio" name="gender" value="male">
      Male
    </label>

    <label>
      <input type="radio" name="gender" value="female">
      Female
    </label>

    <br>
    <label for="address">Address: </label>
    <input type="number" name="address" id="address" class="form-control" />

    <label for="student">Student ID: </label>
    <input type="number" name="student" id="student" class="form-control" />


    <input type="submit" name="savePrt"
           value="Register Parent" class="btn btn-primary" style="margin-top: 16px; " />

  </form>
</div>
</body>
</html>
<%@ include file="footer.jsp"%>