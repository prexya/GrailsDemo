<%--
  Created by IntelliJ IDEA.
  User: prekshukla
  Date: 2019-04-30
  Time: 08:42
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container-fluid">
    <h2>Update Employee Details</h2>
    <g:form action="update" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <g:render template="form" model="[employee: employee]"/>

        <input type="submit" value="Update Employee" class="btn btn-success form-control">
    </g:form>
</div>
</body>
</html>