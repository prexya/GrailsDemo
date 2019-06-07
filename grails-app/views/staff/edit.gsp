<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Update Staff Details</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container-fluid">
    <h2>Update Staff Details</h2>
    <g:form action="update" method="post">
        <input type="hidden" name="id" value="${staff.id}">
        <g:render template="form" model="[staff: staff]"/>

        <input type="submit" value="Update Staff" class="btn btn-success form-control">
    </g:form>
</div>
</body>
</html>
