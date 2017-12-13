<%-- 
    Document   : Home
    Created on : Dec 7, 2017, 11:36:44 PM
    Author     : maninder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML >
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
            <c:if test="${empty mobilearray}">
                <c:redirect url="Home"/>
            </c:if>
        <div id="content">
  <img src="phone.jpg" alt="" />
  <p><h2>
            <b>Welcome to Online Mobile Store</b>
        </h2>
            
                <p>Our Online Mobile Store allows you to view the list of </br> mobiles available in this store.  You can also add your </br> own mobile to the store for sale. </p> 
            </p>
            
            <p>
                Go to Contact Us for any queries.
            </p>
</div>
        </article> 
        <footer>            
            <c:import url="/Footer.jsp" />
        </footer>
        
    </body>
</html>
