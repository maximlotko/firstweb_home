<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 3/13/2017
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>

<jsp:useBean id="user" scope="session" type="lv.ctco.javaschool.firstweb.User"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello user!</title>
</head>

<body>
<%--<h1>Hello, <%=session.getAttribute("fName")%> <%=session.getAttribute("lName")%> (born on <%=session.getAttribute("bDate")%>). Nice to meet you! </h1>--%>
<h1>Hi, <%=session.getAttribute("user")%>. Nice to meet you! </h1>

<table>
    <caption>New User Added Successfully</caption>
    <tr>
        <th> Name</th>
        <th> Surname</th>
        <th> Date of Birth</th>
    </tr>

    <tr>
        <td><%=user.getFirstName()%>
        </td>
        <td><%=user.getLastName()%>
        </td>
        <td><%=user.getBirthDate()%>
        </td>
    </tr>

</table>
</body>
</html>
