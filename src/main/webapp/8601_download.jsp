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
<h2>86 (the band) - True Life Songs and Pictures</h2>

<table>
    <tr>
        <th>Song title</th>
        <th>Audio Format</th>
    </tr>
    <tr>
        <td>You Are a Star</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/star.mp3">MP3</a>
        </td>
    </tr>
    <tr>
        <td>Don't Make No Difference</td>
        <td>
            <a href="/musicStore/sound/<c:out value='${productCode}'/>/no_difference.mp3">MP3</a>
        </td>
    </tr>
</table>
</body>
</html>
