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
<h2>Joe Rut - Genuine Wood Grained Finish</h2>

<table>
    <tr>
        <th>Song title</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>Falling Down</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/falling_down.mp3">MP3</a>
        </td>
    </tr>
    <tr>
        <td>As You Were</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/as_you_were.mp3">MP3</a>
        </td>
    </tr>
</table>
</body>
</html>
