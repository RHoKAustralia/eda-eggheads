<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="sr-only">Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link controller="home" action="index" class="navbar-brand">Egg Donation Australia</g:link>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <g:link controller="home" action="index">Home</g:link>
                </li>
                <li>
                    <g:link controller="faq" action="index">FAQs</g:link>
                </li>
                <li>
                    <g:link controller="media" action="index">Media</g:link>
                </li>
                <li>
                    <g:link controller="event" action="index">Events</g:link>
                </li>
                <li>
                    <g:link controller="contact" action="index">Contact</g:link>
                </li>
            <li>
                <sec:ifLoggedIn>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="glyphicon glyphicon-user"></i>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><g:link controller="story" action="list">View Stories</g:link></li>
                            <li><g:link controller="profile" action="edit">Edit Profile</g:link></li>
                            <li role="separator" class="divider"></li>
                            <li><g:link controller="logout"><strong>Logout</strong></g:link></li>
                        </ul>
                    </li>

                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <g:link controller="login" action="auth"><strong>Login</strong></g:link>
                </sec:ifNotLoggedIn>
            </li>
            </ul>
        </div>
    </div>
</nav>
