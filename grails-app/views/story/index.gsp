<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Stories</title>
</head>

<body>
<p>${message}</p>

<div class="container">
    <div class="row">
        <div id="filter-panel" class="collapse filter-panel">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-inline" role="form">
                        <div class="form-group">
                            <div class="checkbox" style="margin-left:10px; margin-right:10px;">
                                <label><input type="checkbox"> Will Pay Expenses</label>
                            </div>

                            <div class="checkbox" style="margin-left:10px; margin-right:10px;">
                                <label><input type="checkbox"> Will Cycle Interstate</label>
                            </div>

                            <div class="checkbox" style="margin-left:10px; margin-right:10px;">
                                <label><input type="checkbox"> Will Fly Donor</label>
                            </div>

                            <button type="submit" class="btn btn-default filter-col">
                                <span class="glyphicon glyphicon-search"></span> Apply
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#filter-panel">
            <span class="glyphicon glyphicon-cog"></span> Filter
        </button>
    </div>
</div>

<div class="container">
    <div class="row">

        <div class="col-md-12">
            <div id="postlist">

                <g:each in="${stories}">

                    <div class="panel">
                        <div class="panel-heading">
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <h4 class="pull-left">
                                            <small>${it.title}</small>
                                        </h4>
                                    </div>

                                    <div class="col-sm-4">
                                        <h4 class="pull-right">
                                            <small>${it.profile.firstName}</small>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body">
                            <markdown:renderHtml text="${it.description}"/>
                        </div>

                        <div class="panel-footer">
                            <span class="label label-success">${it.profile.type}</span>
                            <span class="label label-info">${it.profile.user.status}</span>
                            <span class="label label-default">${it.profile.suburb}</span>

                            <span class="pull-right">
                                <small><em><b>Last Modified:</b> <g:formatDate format="HH:mm 'on' dd/MM/yyyy" date="${it.created}"/></em></small>
                            </span>
                        </div>
                    </div>

                </g:each>

                <g:paginate total="${numberOfStories}" controller="story" action="list"/>

            </div>
        </div>

    </div>
</div>

</body>
</html>