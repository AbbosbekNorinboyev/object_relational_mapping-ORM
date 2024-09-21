<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student create</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<jsp:include page="/fragments/navbar.jsp"/>
<form method="post" class="mt-5 mb-3 m-5">
    <label for="name" class="form-label">Full name</label>
    <input id="name" type="text" name="name" class="form-control"/>
    <label for="age" class="form-label">Age</label>
    <input id="age" type="number" name="age" class="form-control"/>
    <label for="groupId" class="form-label">Groups</label>
    <select id="groupId" type="button" name="groupId" required>
        <c:forEach items="${groups}" var="groups">
            <option value="${groups.getId()}">${groups.getGroup_name()}</option>
        </c:forEach>
    </select>
    <button type="submit" class="btn btn-success mt-3">Save</button>
</form>
<jsp:include page="/fragments/js.jsp"/>
</body>
</html>
