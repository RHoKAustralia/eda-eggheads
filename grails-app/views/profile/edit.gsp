<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form controller="profile" action="save">
    <g:hiddenField name="id" value="${profile.id}"/>
    <g:textField name="firstName" placeholder="Name"/>
    <g:textField name="suburb" placeholder="Suburb"/>

    <g:select name="state" from="${au.com.eda.State}"/>

    country
    profileImage
    number of children

</g:form>
</body>
</html>
