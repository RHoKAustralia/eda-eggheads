<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>

<body>
<div id='login'>
    %{-- Borrowed from Spring Security--}%
    <div class='inner'>
        <div class='fheader'>Hi there</div>

        <form action='/eda-eggheads/j_spring_security_check' method='POST' id='loginForm' class='cssform'
              autocomplete='off'>
            <p>
                <label for='username'>Username:</label>
                <input type='text' class='text_' name='j_username' id='username'/>
            </p>

            <p>
                <label for='password'>Password:</label>
                <input type='password' class='text_' name='j_password' id='password'/>
            </p>

            <p id="remember_me_holder">
                <label for='remember_me'>Remember me</label>
                <input type='checkbox' name='_spring_security_remember_me' id='remember_me'/>
            </p>

            <p>
                <input type='submit' id="submit" value='Login'/>
            </p>
        </form>

        <div class="new-account">
            <p>Don't have an account?</p>
            <g:link controller="register" action="new">Click here</g:link> to create an account
        </div>
    </div>
</div>

<script type='text/javascript'>
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
</script>
</body>
</html>
