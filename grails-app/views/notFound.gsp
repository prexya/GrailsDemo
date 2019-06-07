<!doctype html>
<html>
    <head>
        <title>Page Not Found</title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
%{--        <ul class="errors">--}%
%{--            <li>Error: Page Not Found (404)</li>--}%
%{--            <li>Path: ${request.forwardURI}</li>--}%
%{--        </ul>--}%

    <div class="container-fluid">
        <h1><span>Ooops Something went wrong....</span></h1>
        <a href ="${createLink(controller: 'employee', action: 'employeeList')}"
            class="btn btn-success"> Go to Employee List</a>
    </div>
    </body>
</html>
