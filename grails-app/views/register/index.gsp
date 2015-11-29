<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Egg Donation Australia</title>
</head>

<body>

<div class="container">
    <h2>New Registration</h2>

    <form role="form">

        <div class="form-group">
            <label for="email">Your Story</label>
            <g:textArea name="story" class="form-control"/>
        </div>


        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="Enter email">
        </div>

        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password">
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>

</body>
</html>