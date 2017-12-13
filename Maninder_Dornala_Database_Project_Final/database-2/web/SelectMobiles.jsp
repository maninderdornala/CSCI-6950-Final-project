<%-- 
    Document   : SelectMobiles
    Created on : Dec 9, 2017, 1:08:32 AM
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
              <form action="ValidateMobileServlet">
              
            Enter Mobile OS:
            <input type="text" name="mobileOS" value="${param.mobileOS}"/>
            <c:if test="${errors.mobileOSMissing}">
            Enter a MobileOS
        </c:if>
                
            </br>
            Select MobileBrand :
            <select name="mobilebrand">
                <option value="choose">choose</option>
                <c:forEach var="mobilebrand" items="${mobilearray.mobilebrands}">
                    <option value=${mobilebrand}
                            <c:if test="${param.mobilebrand == mobilebrand}">
                            selected="true"
                        </c:if>>
                                                ${mobilebrand}
                    </option>
                </c:forEach>
            </select>
            <c:if test="${errors.mobilebrandMissing}">
            Must select a Mobile brand!
        </c:if>
            </br>
            Select MobileModel :
            <select name="mobilemodel">
                <option value="choose">choose</option>
                <c:forEach var="mobilemodel" items="${mobilearray.mobilemodels}">
                    <option value=${mobilemodel}
                            <c:if test="${param.mobilemodel == mobilemodel}">
                            selected="true"
                        </c:if>>
                        ${mobilemodel}
                    </option>
                </c:forEach>
            </select>
            <c:if test="${errors.mobilemodelMissing}">
            Must select a Mobile model!
        </c:if>
            </br>
            Select MobileMemory :
            <input type="radio" name="mobilememory" value="32GB"
                   <c:if test="${param.mobilememory == '32GB'}">
                    checked="true"
                </c:if>
                />32GB</t>
            <input type="radio" name="mobilememory" value="64GB"
                   <c:if test="${param.mobilememory == '64GB'}">
                    checked="true"
                </c:if>
                />64GB</t>   
            <input type="radio" name="mobilememory" value="128GB"
                   <c:if test="${param.mobilememory == '128GB'}">
                    checked="true"
                </c:if>
                />128GB</t>
            <c:if test="${errors.mobilememoryMissing}">
            Must specify the Mobile memory!
        </c:if>
            </br>
            Enter your IMEI Number:
            <input type="text" name="IMEI" value="${param.IMEI}"/>
            <c:if test="${errors.IMEIMissing}">
            Must give a IMEI number!
        </c:if>
        <c:if test="${errors.IMEInotvalid}">
            IMEI number should be exactly 15 digits
        </c:if>
            </br>
            Enter Mobile Price :
            <input type="text" name="mobileprice" value="${param.mobileprice}" />
            <c:if test="${errors.mobilepriceMissing}">
                Must give mobile price!
            </c:if>
            <c:if test="${errors.mobilepricenotnumeric}">
                mobile price must be whole numbers!
            </c:if>
            <c:if test="${errors.mobilepricetoolow}">
                Mobile price must not be negative!
            </c:if>
            </br>
            
            <input type="submit" value="SUBMIT"/> </br>
        </article> 
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>