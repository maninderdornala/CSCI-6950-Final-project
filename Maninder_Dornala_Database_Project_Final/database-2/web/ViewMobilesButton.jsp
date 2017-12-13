<%-- 
    Document   : ViewMobilesButton
    Created on : Dec 9, 2017, 3:06:35 PM
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
        <c:if test="${empty mobilearray }">
                <c:redirect url="GetMobilesServlet"/>
            </c:if>
        <table border="1">
            <th>
                List of Mobiles
            </th>
            
            <c:forEach var="mobile" items="${mobilearray.mobiles}">
                <tr>
                    <td> | ${mobile.mobileOS} | ${mobile.mobilebrand} | ${mobile.mobilemodel} | ${mobile.mobilememory} | ${mobile.IMEI} | ${mobile.mobileprice}</td>

                    <%--<td>${mobile.mobileOS}  ${mobile.mobilebrand} ${mobile.mobilemodel} ${mobile.mobilememory} ${mobile.mobileIMEI} ${mobile.mobilePrice}</td>--%>
                    <td>
                        <form action="GetMobileServlet">
                            <input type="submit" value="Details"/>
                            
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
