<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Customer</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
</head>
<body>
    <header> <span>truYum</span> <img id="logo" src="images/truyum-logo-light.png"
        alt="logo" /> <nav> <a href="ShowMenuItemListCustomer">Menu</a> <a href="ShowCart"
        id="cart">Cart</a> </nav> </header>
    <section> <span id="heading">Products</span> <c:if test="${addCartStatus==true}">
        <b id="notification-message"> Item Added to Cart Successfully</b>
    </c:if> <br>
    <table>
        <col width="200px" />
        <col width="100px" />
        <col width="100px" />
        <col width="120px" />
        <col width="120px" />
        <tr>
            <th class="name-label">Name</th>
            <th class="center-text">Free Delivery</th>
            <th class="right-label">Price</th>
            <th class="center-text">Category</th>
            <th class="center-text">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td class="name-label">${menuItem.getName()}</td>
                <td class="center-text"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()== 'true'}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <f:setLocale value="en_IN" />
                <td class="right-label"><f:formatNumber type="currency" maxFractionDigits="2"
                        value="${menuItem.getPrice()}"></f:formatNumber></td>
                <td class="center-text">${menuItem.getCategory()}</td>
                <td class="center-text"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                        to Cart</a></td>
            </tr>


        </c:forEach>
    </table>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>