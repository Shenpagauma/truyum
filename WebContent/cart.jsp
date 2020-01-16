<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
</head>
<body>
    <header> <span>truYum</span> <img id="logo" src="images/truyum-logo-light.png"
        alt="logo" /> <nav> <a href="ShowMenuItemListCustomer">Menu</a> <a href="ShowCart"
        id="cart">Cart</a> </nav> </header>
    <section> <span id="heading">Cart</span> <c:if test="${removeCartItemStatus==true}">
        <b id="notification-message">Item Removed from Cart Successfully</b>
    </c:if> <c:set var="cart" value="${cart}"></c:set> <br>
    <table>
        <col width="200px" />
        <col width="100px" />
        <col width="100px" />
        <col width="100px" />
        <tr>
            <th class="name-label" class="bold">Name</th>
            <th class="left-label" class="bold">Free Delivery</th>
            <th class="right-label" class="bold">Price</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td class="name-label">${menuItem.getName()}</td>
                <td class="left-label"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()== 'true'}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <f:setLocale value="en_IN" />
                <td class="right-label"><f:formatNumber type="currency" maxFractionDigits="2"
                        value="${menuItem.getPrice()}"></f:formatNumber></td>
                <td class="center-text"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>
            </tr>


        </c:forEach>
        <tr>
            <td></td>
            <td class="left-label" class="bold"><label><b>Total</b></label></td>
            </td>
            <f:setLocale value="en_IN" />
            <td class="right-label" class="bold"><b><f:formatNumber type="currency"
                        maxFractionDigits="2" value="${cart.getTotal()}"></f:formatNumber></b></td>
        </tr>
    </table>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>