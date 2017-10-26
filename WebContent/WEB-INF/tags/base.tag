<%@tag description="Basic template with javascript headers" pageEncoding="UTF-8" %>
<%@attribute name="title" fragment="true" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="../static/logo48.png">
    <%--JQuery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <%--Materialize--%>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <title>
        <jsp:invoke fragment="title"/>
    </title>
</head>
<body>
<jsp:doBody/>
</body>
</html>