<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Group delete</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<jsp:include page="/fragments/navbar.jsp"/>
<form method="post" class="m-5">
    <div class="alert alert-danger">
        <h1>Are you sure delete this group <i>${group.group_name}</i></h1>
    </div>
    <button type="submit" class="btn btn-success">Delete</button>
    <a href="/group/list" class="btn btn-danger">Back</a>
</form>
<jsp:include page="/fragments/js"/>
</body>
</html>
