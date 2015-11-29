<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Profile</title>
</head>

<body>

%{--Profile Banner--}%
<div class="container">
    <div class="fb-profile">
        %{--<img align="left" class="fb-image-profile thumbnail" src="${profile.profileImageLink}" alt="Profile Image"/>--}%
        <div class="fb-profile-text">
            <h1>${profile.firstName}</h1>
            <p><b>Country: </b>${profile.country}</p>
            <p><b>State: </b>${profile.state}</p>
            <p><b>Suburb: </b>${profile.suburb}</p>
            <p><b>Status: </b>${profile.user.status}</p>
            <p><b>Children: </b>${profile.children}</p>
        </div>
    </div>
</div> <!-- /container -->

%{--Story--}%
<div class="container">
    <div class="row">
        <div class="col-sm-12 text-center">
            <h2>Story</h2>
            <hr class="star-light">
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="panel">
                <div class="panel-heading">
                    <div class="text-center">
                        <div class="row">
                            <div class="col-sm-8">
                                <h4 class="pull-left">
                                    <small>${profile.story.title}</small>
                                </h4>
                            </div>

                            <div class="col-sm-4">
                                <h4 class="pull-right">
                                    <small>${profile.firstName}</small>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel-body">
                    <markdown:renderHtml text="${profile.story.description}"/>
                </div>

                <div class="panel-footer">
                    <span class="label label-success">${profile.type}</span>
                    <span class="label label-info">${profile.user.status}</span>
                    <span class="label label-default">${profile.suburb}</span>

                    <span class="pull-right">
                        <small><em><b>Last Modified:</b> <g:formatDate format="HH:mm 'on' dd/MM/yyyy" date="${profile.story.created}"/></em></small>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>

%{--Comments--}%
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h1><small class="pull-right">${profile.numberOfComments} comments</small> Comments </h1>
            </div>

            <div class="comments-list">

                <g:each in="${profile.comments}">
                    <div class="media">
                        <p class="pull-right"><small><g:formatDate format="HH:mm 'on' dd/MM/yyyy" date="${it.created}"/></small></p>

                        <div style="width: 50px; height: auto;">
                            <g:if test="${it.author.profile.profileImage}">
                                <a class="media-left" href="#"><img style="width: 100%" src="${profile.profileImageLink}"></a>
                            </g:if>
                            <g:else>
                                <g:img style="width: 100%" dir="images" file="icon-profile.png"/>
                            </g:else>
                        </div>

                        <div class="media-body">
                            <h4 class="media-heading user_name">${it.author.profile.firstName}</h4>
                            <p>${it.comment}</p>
                        </div>
                    </div>
                </g:each>

            </div>
        </div>
    </div>
</div>

%{--Comment Input--}%
<link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="widget-area no-padding blank">
                <div class="status-upload">
                    <g:form controller="comment" action="save">
                        <textarea placeholder="Say something to ${profile.firstName}?" ></textarea>
                        <button type="submit" class="btn btn-success green"><i class="fa fa-share"></i> Send</button>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>