<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>EDA Stories</title>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <ul>
                <g:each in="${stories}">
                    <li>${it.title} - ${it.description}</li>
                </g:each>
            </ul>
        </div>
    </div>
</div>

</body>
</html>