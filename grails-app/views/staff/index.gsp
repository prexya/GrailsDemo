<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Staff List</title>
</head>
<body>
<div class="container-fluid">
    <div class="row float-right">
        <a href="${createLink(controller: 'staff', action: 'create')}" class="btn btn-success">
            Add Staff
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
                <td>Staff ID</td>
                <td>FirstName</td>
                <td>MiddleName</td>
                <td>LastName</td>
                <td>Department</td>
                <td>Experience</td>
                <td>Tier</td>
                <td>Shift</td>
                <td>Address</td>
                <td>Action</td>
            </tr>

            <g:each in="${staffList}" var ="s" status="i">
                <tr>
                    <td>${i+1}</td>
                    <td>${s.staffid}</td>
                    <td>${s.firstname}</td>
                    <td>${s.middlename}</td>
                    <td>${s.lastname}</td>
                    <td>${s.department}</td>
                    <td>${s.experience}</td>
                    <td>${s.tier}</td>
                    <td>${s.shift}</td>
                    <td>${s.address}</td>
                    <td>
                        <a href="${createLink(controller: 'staff', action: 'edit', params: [id: s.id])}" class="btn btn-success">Edit</a>
                        <a href="${createLink(controller: 'staff', action: 'deleteStaff',params: [id: s?.id])}" class="btn btn-danger"
                           onclick="return confirm('Are you sure you want to delete?')">Delete</a>
                    </td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>