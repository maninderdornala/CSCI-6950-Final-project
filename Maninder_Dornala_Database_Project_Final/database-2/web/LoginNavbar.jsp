<%-- 
    Document   : LoginNavbar
    Created on : Dec 10, 2017, 10:52:56 PM
    Author     : maninder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
        <link rel="stylesheet" type="text/css" href="template.css" />
    </head>
    <body>
        <header>
            <%@include file="/Logo.html" %>
            
        </header>
        <%@include file="/Navbar.html" %>


<%
    if ((session.getAttribute("userid") != null) && (session.getAttribute("userid") != "")) {
%>
You are already logged in <%=session.getAttribute("userid")%><br/>

<%} else {
%>
 <%
    String redirectURL = "index.jsp";
    response.sendRedirect(redirectURL);
%>

<%
    }
%>

<footer>            
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>