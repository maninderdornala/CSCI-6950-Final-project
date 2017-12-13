<%-- 
    Document   : MobilesCart
    Created on : Dec 9, 2017, 10:33:23 PM
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
            <c:choose>
                <c:when test="${empty mobilelist or mobilelist.size == 0}">
                    <p>No mobiles in the cart</p>
                </c:when>
            <c:otherwise>
            <th>
                Selected Mobiles
            </th>
            <c:forEach var="mobile" items="${mobilelist.mobiles}">
                <tr>
                    <td>
                        <a href='GetMobileServlet?mobilebrand=${mobile.mobilebrand}&mobilemodel=${mobile.mobilemodel}&mobilememory=${mobile.mobilememory}'>
                            | ${mobile.mobileOS} | ${mobile.mobilebrand} | ${mobile.mobilemodel} | ${mobile.mobilememory} | ${mobile.IMEI} | ${mobile.mobileprice}
                        </a>                        
                    </td>
                    <td>
                        <form action="DropMobileServlet">
                            <input type="submit" value="Drop"/>                        
                            <input type="hidden" name="mobilebrand" 
                                   value="${mobile.mobilebrand}"/>
                            <input type="hidden" name="mobilemodel" 
                                   value="${mobile.mobilemodel}"/>
                            <input type="hidden" name="mobilememory" 
                                   value="${mobile.mobilememory}"/>
                            <input type="hidden" name="IMEI" 
                                   value="${mobile.IMEI}"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
         
            </c:otherwise>
            </c:choose>
        </table>
    </article>   
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>
