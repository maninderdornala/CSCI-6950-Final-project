<%-- 
    Document   : logout
    Created on : Dec 10, 2017, 1:39:22 AM
    Author     : maninder
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
