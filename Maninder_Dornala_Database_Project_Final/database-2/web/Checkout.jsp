<%-- 
    Document   : Checkout
    Created on : Dec 11, 2017, 1:26:13 PM
    Author     : manin
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
            <c:choose>
                <c:when test="${empty mobilelist or mobilelist.size == 0}">
                    <p>Sorry you have no items to checkout</p>
                </c:when>
            <c:otherwise>
            <th>
                Thank you for ordering the following items
            </th>
            <c:forEach var="mobile" items="${mobilelist.mobiles}">
                <tr>
                    <td>
                        <a href='GetMobileServlet?mobilebrand=${mobile.mobilebrand}&mobilemodel=${mobile.mobilemodel}&mobilememory=${mobile.mobilememory}'>
                            ${mobile.mobileOS} ${mobile.mobilebrand} ${mobile.mobilemodel} ${mobile.mobilememory} ${mobile.IMEI} ${mobile.mobileprice}
                        </a>                        
                    </td>
                    </tr>
                    
            </c:forEach>
                    To continue to payment <a href="PaymentDetails.jsp">Click here</a>
                    </c:otherwise>
            </c:choose>
        </table>
    </article>   
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>
                    