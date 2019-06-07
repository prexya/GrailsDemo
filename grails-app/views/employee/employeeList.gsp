<%--
  Created by IntelliJ IDEA.
  User: prekshukla
  Date: 2019-04-29
  Time: 07:59
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Employee List</title>
</head>
<body>
<div class="container-fluid">
    <div class="row float-right">
        <a href="${createLink(controller: 'employee', action: 'addEmployee')}" class="btn btn-success">
            Add Employee
        </a>
    </div>

    <g:if test="${flash.message}">
        <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">&times;</a>
            ${flash.message}
        </div>
    </g:if>

    <div class="table table-bordered table-hover">
        <table>
            <tr>
                <td>S.N</td>
                <td>FirstName</td>
                <td>LastName</td>
                <td>Age</td>
                <td>Address</td>
                <td>Department</td>
                <td>Designation</td>
                <td>Action</td>
            </tr>

            <g:each in="${employeeList}" var ="e" status="i">
                <tr>
                    <td>${i+1}</td>
                    <td>${e.firstname}</td>
                    <td>${e.lastname}</td>
                    <td>${e.age}</td>
                    <td>${e.address}</td>
                    <td>${e.department}</td>
                    <td>${e.designation}</td>
                    <td>
                        <a href="${createLink(controller: 'employee', action: 'editEmployee', params: [id: e.id])}" class="btn btn-success">Edit</a>
                        <a href="${createLink(controller: 'employee', action: 'deleteEmployee', params: [id: e.id])}" class="btn btn-danger"
                           onclick="return confirm('Are you sure you want to delete?')">Delete</a>
                    </td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>