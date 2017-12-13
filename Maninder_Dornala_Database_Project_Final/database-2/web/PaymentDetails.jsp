<%-- 
    Document   : PaymentDetails
    Created on : Dec 11, 2017, 1:40:55 PM
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
        <nav>
            <%@include file="/Navbar.html" %>
        </nav>
        <article>
       
        <div  style="background-color: white;">
        <font size="5px">PAYMENT INFORMATION</font>
        <form action="PaymentDetails" method="get">
            <br>  <label style=" color: black; font-size: 15px; margin-left: 28px; ">Card Number: <input name="cardnumber" type="text" placeholder="Enter Card Number" style="margin-left: 60px; width: 350px;"/></label>
          <br>  <label style=" color: black; font-size: 15px; margin-left: 28px;">First Name: <input name="firstname" type="text" placeholder="Enter Card Holder's first name"style="margin-left: 75px; width: 350px;"/></label>
         <br>   <label style=" color: black; font-size: 15px; margin-left: 28px;">Last Name: <input name="lastname" type="text" placeholder="Enter Card Holder's last name"style="margin-left: 76px; width: 350px;"/></label>
         <br>  <label style=" color: black; font-size: 15px; margin-left: 28px;">Card Date: <input name="carddate" type="text" placeholder="Enter Card Expiry Date"style="margin-left: 80.5px; width: 350px;"/></label>
         <br>   <label style=" color: black; font-size: 15px; margin-left: 28px;">Email <input name="cvv" type="text" placeholder="Enter email"style="margin-left: 110px; width: 350px;"/></label>
         <br>   <label style=" color: black; font-size: 15px; margin-left: 28px;">Shipping Address:<textarea name="address" style="width:350px; border:1px solid #999999; margin-top: 0px;margin-left: 38px; "></textarea></label>
            <br>
             <input type="submit" value="Submit" />
            
        </form>
    
    </div>
        </article> 
        <footer>
            <c:import url="/Footer.jsp" />
        </footer>
        
    </body>
</html>
