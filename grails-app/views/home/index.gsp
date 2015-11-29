<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Egg Donation Australia</title>
</head>

<body>
%{--TODO Fix me, and put carousel in container-fluid--}%

<div class="container-fluid home-carousel">
    <div class="row">
        <div class="col-sm-12">
            <div id="home-carousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#home-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#home-carousel" data-slide-to="1"></li>
                    <li data-target="#home-carousel" data-slide-to="2"></li>
                    <li data-target="#home-carousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <g:img dir="images" file="recipient-info.png"/>
                    </div>

                    <div class="item">
                        <img src="http://placehold.it/1200x900" alt="Placeholder">
                    </div>

                    <div class="item">
                        <img src="http://placehold.it/1200x900" alt="Placeholder">
                    </div>

                    <div class="item">
                        <img src="http://placehold.it/1200x900" alt="Placeholder">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#home-carousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#home-carousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!-- About Section -->
<section class="success" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>About</h2>
                <hr class="star-light">
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-lg-offset-2">
                <p></p>
            </div>

            <div class="col-lg-4">
                <p></p>
            </div>
        </div>
    </div>
</section>
</body>
</html>