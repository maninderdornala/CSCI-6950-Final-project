<%-- 
    Document   : FinalPage
    Created on : Dec 12, 2017, 2:58:59 AM
    Author     : manin
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
            
  <p><h2>
      <b>Thank you for choosing our Online Mobile Store <br>
            Your Order will be shipped soon...</b>
        </h2>
            
                
        </article> 
        <footer>            
            <c:import url="/Footer.jsp" />
        </footer>
        
    </body>
</html>

