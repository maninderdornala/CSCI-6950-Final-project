<%-- 
    Document   : MobileDetail
    Created on : Dec 8, 2017, 3:09:40 PM
    Author     : manin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            Mobile operating system : ${currentmobile.mobileOS} </br>
            Mobile Brand : ${currentmobile.mobilebrand}</br>
            Mobile Model : ${currentmobile.mobilemodel} </br>
            Mobile Memory : ${currentmobile.mobilememory} </br>
            Mobile Price : ${currentmobile.mobileprice} USD </br>
            
            <%--<b>${currentmobile.mobilebrand}</b></br> <b>${currentmobile.mobilemodel}< has ${currentmobile.mobilememory} memory
              with a price of ${currentmobile.mobileprice} USD  </b></br>--%>
                            
        </article> 
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>
