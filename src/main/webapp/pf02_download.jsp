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
<h2>Paddlefoot - The Second CD</h2>

<table>
    <tr>
        <th>Song title</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>She’s My Friend</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/friend.mp3">MP3</a>
        </td>
    </tr>
    <tr>
        <td>So Long</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/so_long.mp3">MP3</a>
        </td>
    </tr>
</table>
</body>
</html>
