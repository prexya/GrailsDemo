<%--
  Created by IntelliJ IDEA.
  User: prekshukla
  Date: 2019-05-06
  Time: 07:24
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Address List</title>
</head>
<body>
<div class="container-fluid">
    <div class="row float-right">
        <a href="${createLink(controller: 'address', action: 'addNew')}" class="btn btn-success">
            Add Address
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
                <td>District</td>
                <td>State</td>
                <td>Locality</td>
                <td>Ward No</td>
                <td>Tole</td>
                <td>Is Temporary?</td>
                <td>Action</td>
            </tr>

            <g:each in="${addressList}" var ="a" status="i">
                <tr>
                    <td>${i+1}</td>
                    <td>${a.district}</td>
                    <td>${a.state}</td>
                    <td>${a.locality}</td>
                    <td>${a.wardno}</td>
                    <td>${a.tole}</td>
                    <td>${a.istemp}</td>
                    <td>
                        <a href="${createLink(controller: 'address', action: 'edit', params: [id: a.id])}" class="btn btn-success">Edit</a>
                        <a href="${createLink(controller: 'address', action: 'deleteAddress', params: [id: a.id])}" class="btn btn-danger"
                           onclick="return confirm('Are you sure you want to delete?')">Delete</a>
                    </td>
                </tr>
            </g:each>
        </table>

        <g:paginate total="${totalCount}"/>
    </div>
</div>
</body>
</html>