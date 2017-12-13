<%-- 
    Document   : AddMobiles
    Created on : Dec 7, 2017, 10:55:54 PM
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
            <th>
                Current mobiles
            </th>
            <c:forEach var="mobile" items="${mobilearray.mobiles}">
                <tr>
                    <td>
                        <a href='GetMobileServlet?mobilebrand=${mobile.mobilebrand}&mobilemodel=${mobile.mobilemodel}&mobilememory=${mobile.mobilememory}'>
                            | ${mobile.mobileOS} | ${mobile.mobilebrand} | ${mobile.mobilemodel} | ${mobile.mobilememory} | ${mobile.IMEI} | ${mobile.mobileprice}
                        </a>                        
                    </td>
                    <td>
                        <form action="AddMobileServlet">
                            <input type="submit" value="Add"/>                        
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
        </table>
    </article>   
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>
