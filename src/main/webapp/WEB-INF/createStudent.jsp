<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param
        name="title" value="Create Student" />
</jsp:include>
<div id="middle">
  <h2 style="text-align: left;">
    <b>Enter Mark Details</b>
  </h2>
  <c:if test="${message != null}">
    <fieldset>
      <h3>
        <span style="color: red"> ${message}</span>
      </h3>
    </fieldset>
  </c:if>
  <form action="createStudent.php?page=createStudent" method="post">
    <table>
      <tr>
        <td align="right"><b><t:field mandatory="yes"
                                      text="First Name"></t:field></b></td>
        <td align="left"><input type="text" size="25" maxlength="50"
                                name="firstName" id="firstName" /></td>
      </tr>
      <tr>
        <td align="right"><b><t:field mandatory="yes"
                                      text="Last Name"></t:field></b></td>
        <td align="left"><input type="text" size="25"
                                maxlength="50" name="lastName" id="last Name" /></td>
      </tr>
      <tr>
        <td align="right"><b><t:field mandatory="yes"
                                      text="phoneNumber"></t:field></b></td>
        <td align="left"><input type="text" size="25"
                                maxlength="50" name="phoneNumber" id="phoneNumber" /></td>
      </tr>
      <tr>
        <td align="right"><b><t:field mandatory="yes"
                                      text="dob"></t:field></b></td>
        <td align="left"><input type="date" size="25" name="dob" id="dob" /></td>
      </tr>
      <tr>
        <td> <label>Is repeating:</label></td>
        <td> <input type="checkbox" id="repeating" name="repeating" value="true"> </td>
      </tr>
      <tr>
        <td> <label>Is part time:</label></td>
        <td> <input type="checkbox" id="partTime" name="partTime" value="true"> </td>
      </tr>
      <tr>
        <td> <label>Is international:</label></td>
        <td> <input type="checkbox" id="international" name="international" value="true"> </td>
      </tr>





      <tr>
        <td align="right">&nbsp;</td>
        <td align="left"><input type="submit" name="saveDataStudent" value="Create Student" /></td>
      </tr>
    </table>
  </form>
</div>
<%@ include file="footer.jsp"%>