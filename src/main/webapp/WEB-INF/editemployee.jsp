<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<div class="container">
  <jsp:include page="headeradmin.jsp"><jsp:param
          name="title" value="Create User" />
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
      height: 40vh;
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

    input[type="text"], input[type="password"] {
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
    <b>Enter User Details</b>
  </h3>
  <c:if test="${message != null}">
    <fieldset>
      <h3>
        <span style="color: green"> ${message}</span>
      </h3>
    </fieldset>
  </c:if>
  <c:forEach items="${users}" var="usr" varStatus="usrstatus">
    <form action="editemployee.php?page=editemployee" method="post" class="form-group">

      <label for="id">Employee ID </label>
      <input type="text" name="id" value=${usr.getId()} class="form-control"/>

      <label for="username">Username: </label>
      <input type="text" size="25" maxlength="50"
             name="username" id="username" class="form-control" value=${usr.getUsername()}/>

      <label for="fullname">User Full Name</label>
      <input type="text" size="50" maxlength="50"
             name="userfullname" id="userfullname" class="form-control" value=${usr.getFullName()}/>

      <label for="email">Email</label>
      <input type="text" size="50" maxlength="50"
             name="email" id="email" class="form-control" value=${usr.getEmail()}/>

      <input type="submit" name="saveEditedEmployee"
             value="Edit Employee" class="btn btn-primary" style="margin-top: 16px; " />

    </form>
  </c:forEach>
</div>
</body>
</html>

<%@ include file="footer.jsp"%>