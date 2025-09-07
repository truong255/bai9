<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>View Cookies</title>
</head>
<body>
<h1>Cookies</h1>

<p>Email: <c:out value="${cookie.email.value}" /></p>
<p>First Name: <c:out value="${cookie.firstName.value}" /></p>
<p>Last Name: <c:out value="${cookie.lastName.value}" /></p>

</body>
</html>
