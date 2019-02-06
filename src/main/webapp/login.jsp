<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "login" %></title>
</head>
<body>
<h3>Login Form</h3>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
%>
<br/>
<form action="login.jsp" method="POST">
    Username:<input type="text" name="username"/><br/><br/>
    Password:<input type="password" name="password"/><br/><br/>
    <button type="submit">Login</button>
</form>
</body>
</html>