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
        <img align="left" class="fb-image-profile thumbnail" src="${profile.profileImageLink}" alt="Profile Image"/>
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
<div class="panel">
    <div class="panel-heading">
        <div class="text-center">
            <div class="row">
                <div class="col-sm-9">
                    <h3 class="pull-left">${profile.story.title}</h3>
                </div>

                <div class="col-sm-3">
                    <h4 class="pull-right">
                        <small><em>${profile.story.lastModified}</em></small>
                    </h4>
                </div>
            </div>
        </div>
    </div>

    <div class="panel-body">
        ${profile.story.description}
    </div>
</div>

%{--Comments--}%
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="page-header">
                <h1><small class="pull-right">${profile.numberOfComments} comments</small> Comments </h1>
            </div>

            <div class="comments-list">

                <g:each in="${profile.comments}">
                    <div class="media">
                        <p class="pull-right"><small>${it.created}</small></p>
                        <a class="media-left" href="#">
                            <img src="http://lorempixel.com/40/40/people/1/">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading user_name">${it.author}</h4>
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
        <div class="col-md-8">
            <div class="widget-area no-padding blank">
                <div class="status-upload">
                    <form>
                        <textarea placeholder="Say something to ${profile.firstName}?" ></textarea>
                        <button type="submit" class="btn btn-success green"><i class="fa fa-share"></i> Send</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>