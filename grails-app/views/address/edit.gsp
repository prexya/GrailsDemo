<%--
  Created by IntelliJ IDEA.
  User: prekshukla
  Date: 2019-05-06
  Time: 07:24
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container-fluid">
    <h2>Update Address Details</h2>
    <g:form action="update" method="post">
        <input type="hidden" name="id" value="${address.id}">
        <g:render template="form" model="[address: address]"/>

        <input type="submit" value="Update Address" class="btn btn-success">
    </g:form>
</div></body>
</html>