<%-- 
    Document   : success
    Created on : Dec 10, 2017, 1:38:38 AM
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
        <article>

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<h3>Are you sure <%=session.getAttribute("userid")%> you want to logout? </br></h3>
<h2><a href='logout.jsp'>Log out</a></h2>
<%
    }
%>
        </article>
        <footer>            
            <c:import url="/Footer.jsp" />
        </footer>
    </body>
</html>