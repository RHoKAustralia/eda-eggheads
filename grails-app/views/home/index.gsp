<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Egg Donation Australia</title>
</head>

<body>
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
                        <g:link controller="register" action="new">
                            <g:img dir="images" file="recipient-info.png" alt="Recipient Info"/>
                        </g:link>
                    </div>

                    <div class="item">
                        <g:link controller="faq" action="index">
                            <g:img dir="images" file="faqs.png" alt="FAQs"/>
                        </g:link>
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
            <div class="col-sm-12 text-center">
                <h2>About</h2>
                <hr class="star-light">
            </div>
        </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
                <p>
                    Egg Donation Australia is a not for profit organisation dedicated to offering education and support within our member community. We aim to promote awareness and public education about Egg Donation within Australia, as well as related fertility issues such as IVF, Embryo Donation and Surrogacy.
                </p>

                <p>
                    We offer support and information to Intended Parents and Donors in all stages of their egg donation journey. Egg Donation Australia works in conjunction with fertility clinics and other holistic health providers across Australia to better improve outcomes for patients.
                </p>

                <p>
                    Egg Donation Australia was founded in 2011 and is administered by a team of volunteers. We have an active community across Australia and we provide and safe and friendly online community for our members to share their experiences. We have a vibrant social network, with regular meet ups and events across Australia.
                </p>

                <p>
                    We are also a proactive voice in raising awareness and creating conversation on these issues within the community and through the media.
                </p>
            </div>
        </div>
    </div>
</section>
</body>
</html>