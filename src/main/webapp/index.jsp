<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 3/13/2017
  Time: 8:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User data entry</title>
</head>
<body>
<form method="post" action="/hello">
    <label>Please enter your </label>

    <label for="user-fname">First name: </label>
    <input id="user-fname" type="text" name="firstName">

    <label for="user-lname">, Last name: </label>
    <input id="user-lname" type="text" name="lastName">

    <label for="user-bdate">& Birthdate: </label>
    <input id="user-bdate" type="text" name="birthDate">

    <input type="submit" value="Submit your data">
</form>
</body>
</html>
