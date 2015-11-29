<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'favicon.png')}">
    <link rel="shortcut icon" type="image/x-icon" href="${resource(dir: 'images', file: 'favicon.ico')}">

    <title><g:layoutTitle default="Egg Donation Australia"/></title>

    <link href='http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'style.css')}" media="all"/>

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <g:layoutHead/>
</head>

<body>
<div class="indicator"></div>

<g:render template="/elements/header"/>

<div class="content">
    <g:layoutBody/>
</div>

<g:render template="/elements/footer"/>

<script type="application/javascript" src="${resource(dir: 'js', file: 'jquery-2.1.4.js')}"></script>
<script type="application/javascript" src="${resource(dir: 'bootstrap/javascripts', file: 'bootstrap.js')}"></script>
<script type="application/javascript"
        src="${resource(dir: 'bootstrap/javascripts', file: 'bootstrap-sprockets.js')}"></script>
<script type="application/javascript"
        src="${resource(dir: 'bootstrap/javascripts/bootstrap', file: 'carousel.js')}"></script>
</body>
</html>
