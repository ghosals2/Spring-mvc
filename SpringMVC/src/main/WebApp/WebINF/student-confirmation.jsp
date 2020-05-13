<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<! Doctype html>
<html>
<head>
<title> Student Confirmation Page</title>
</head>

<body>
The Student is confirmed: ${student.firstName } ${student.lastName }
<br> <br>
Country :${student.country }

<br> <br>

Favourite Language: ${student.favouriteLanguage }

<br> <br>

Operating Systems :

<ul>
<c:forEach var="temp" items="${student.operatingSystems }">

<li> ${temp} </li>

</c:forEach>
</ul>
</body>
</html>