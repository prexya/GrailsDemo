<%--
  Created by IntelliJ IDEA.
  User: prekshukla
  Date: 2019-04-29
  Time: 08:39
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
   <div class="container-fluid">
       <g:form action="save" method="post">
           <g:render template="form"/>
%{--           <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>--}%
%{--           <script src="js/jquery_validation_js"></script>--}%
           <input type="submit" value="Save Employee" class="btn btn-success form-control">
       </g:form>
   </div>
</body>
</html>