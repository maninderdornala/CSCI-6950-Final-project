<%-- 
    Document   : template
    Created on : Dec 7, 2017, 11:43:50 PM
    Author     : manin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <article>
            PLACE PAGE CONTENT HERE
        </article> 
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
        
    </body>
</html>
