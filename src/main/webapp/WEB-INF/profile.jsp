<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome back, ${username}</h1>
        <h1>Viewing your profile.</h1>
    </div>

    <form action="/logout" method="post">
        <input type="submit" class="btn btn-primary btn-block" value="Logout" >
    </form>

</body>
</html>
