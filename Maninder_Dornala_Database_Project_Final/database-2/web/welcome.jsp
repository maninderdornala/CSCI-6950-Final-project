<%-- 
    Document   : welcome
    Created on : Dec 10, 2017, 1:35:50 AM
    Author     : maninder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="template.css" />
    </head>
    <body>
        <header>
            <%@include file="/Logo.html" %>
            
        </header>
            <%@include file="/Navbar.html" %>
        Registration is Successful.
Please Login Here <a href='index.jsp'>Go to Login</a>
        <footer>            
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>
