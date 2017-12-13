<%-- 
    Document   : ViewMobiles
    Created on : Dec 9, 2017, 12:28:06 AM
    Author     : maninder
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        
    <article> 
        
        <table border="1">
            <th>List of Mobiles</th>
            <c:forEach var="mobile" items="${mobilearray.mobiles}">
                <tr>
                    <td>${mobile.mobileOS} ${mobile.mobilebrand} ${mobile.mobilemodel} ${mobile.mobilememory} ${mobile.IMEI} ${mobile.mobileprice} </td>
                </tr>
            </c:forEach>
        </table>
    </article>   
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>
