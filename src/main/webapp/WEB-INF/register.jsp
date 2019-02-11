<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register for an account" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Create a new User</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="userName">User Name</label>
                <input id="userName" name="userName" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div>
                <label for="confirmPassword">Confirm Your Password</label>
                <input id="confirmPassword" name="password" class="form-control" type="password">
            </div>
    </div>
        </form>

            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>

</body>
</html>