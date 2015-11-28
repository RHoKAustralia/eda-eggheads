<%--
  Created by IntelliJ IDEA.
  User: philipwindeyer
  Date: 28/11/2015
  Time: 5:29 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form controller="story" action="save">
    <g:hiddenField name="id" value="${story.id}"/>
    <g:textField name="title" placeholder="Title"/>
    <g:textField name="description" placeholder="Body"/>
</g:form>
</body>
</html>