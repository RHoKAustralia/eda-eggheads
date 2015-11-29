<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Edit Profile</title>
</head>

<body>

%{--Profile Banner--}%
<div class="container">
    <div class="fb-profile">
        <img align="left" class="fb-image-profile thumbnail" src="${profile.profileImageLink}" alt="Profile Image"/>
        <g:form controller="profile" action="save" class="fb-profile-text">

            <p>Name: <g:textField name="firstName" placeholder="${profile.firstName}"/></p>

            <p>Country: <g:select name="country" from="${au.com.eda.Country}"/></p>

            <p>State: <g:select name="state" from="${au.com.eda.State}"/></p>

            <p>Suburb: <g:textField name="suburb" placeholder="Suburb"/></p>

            <p>Number of Children: <g:select name="children" from="${0..10}"/></p>

        </g:form>
    </div>
</div> <!-- /container -->

%{--Story--}%
<div class="panel">
    <div class="panel-heading">
        <div class="text-center">
            <div class="row">
                <div class="col-sm-9">
                    <h3 class="pull-left">${profile.story.title}</h3>
                </div>

                <div class="col-sm-3">
                    <h4 class="pull-right">
                        <small><em><b>Last Modified:</b> <g:formatDate format="HH:mm 'on' dd/MM/yyyy" date="${profile.story.lastModified}"/></em></small>
                    </h4>
                </div>
            </div>
        </div>
    </div>

    <div class="panel-body">
        ${profile.story.description}
    </div>
</div>

</body>
</html>
