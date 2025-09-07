<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1>Downloads</h1>
<h2>Paddlefoot - The First CD</h2>

<table>
    <tr>
        <th>Song title</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>Shut Down</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/shut_down.mp3">MP3</a>
        </td>
    </tr>
    <tr>
        <td>Say Something</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/say_something.mp3">MP3</a>
        </td>
    </tr>
</table>
</body>
</html>
