<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>

    <link rel="stylesheet" href="../../css/adlister.css">

</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container">
    <h1>Here are all the ads!</h1>
    <ul>
    <c:forEach var="ad" items="${ads}">
        <li>
            <h3>${ad.title}</h3>
            <h4>${ad.description}</h4>
        </li>
    </c:forEach>
    </ul>
</div>
</body>
</html>