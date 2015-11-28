
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Stories</title>
</head>

<body>
<p>${message}</p>

<ul>
    <g:each in="${stories}">
        <li>${it.title} - ${it.description}</li>
    </g:each>
</ul>

</body>
</html>