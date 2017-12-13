<%-- 
    Document   : MobileAdded
    Created on : Dec 8, 2017, 11:33:50 PM
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
            Hurray !!! New Mobile Added.
        </article> 
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
        
    </body>
</html>
