<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student update</title>
    <jsp:include page="/fragments/css.jsp"/>
</head>
<body>
<jsp:include page="/fragments/navbar.jsp"/>
<form method="post" class="mt-5 mb-3 m-5">
    <div>
        <label for="age" class="form-label">Age</label>
        <input id="age" type="number" name="age" class="form-control" value="${student.age}"/>
    </div>
<%--    <div>--%>
<%--        <label for="groupId" class="form-label">Groups</label>--%>
<%--        <select id="groupId" type="button" name="groupId" required>--%>
<%--            <c:forEach items="${groupsList}" var="groupsList">--%>
<%--                <option value="${groupsList.id}">${groupsList.group_name}</option>--%>
<%--            </c:forEach>--%>
<%--        </select>--%>
<%--    </div>--%>
    <div class="mt-3">
        <button type="submit" class="btn btn-success">Update</button>
        <a href="/student/list" class="btn btn-danger">Back</a>
    </div>
</form>
<jsp:include page="/fragments/js.jsp"/>
</body>
</html>
