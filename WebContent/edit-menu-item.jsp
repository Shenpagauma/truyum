<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> <span>truYum</span> <img id="logo" src="images/truyum-logo-light.png"
        alt="logo" /> <nav> <a href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <section> <span id="heading">Edit Menu Item</span>
    <form action="EditMenuItem" method="post" name="menuItemForm"
        onsubmit="return validateMenuItemForm()">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <table>
            <tr>
                <td><label for="name" class="grey">Name</label></td>
            </tr>
            <tr>
                <td colspan="4"><input type="text" name="name" size="71" id="name"
                    value="${menuItem.getName()}" autocomplete="off" spellcheck="false" autofocus
                    placeholder="Sandwich" /></td>
            </tr>
            <tr>
                <td height="30px"></td>
            </tr>
            <tr>
                <td><label for="price" class="grey">Price(Rs.)</label></td>
                <td><label class="grey"> Active</label></td>
                <td><label for="date-of-launch" class="grey">Date of Launch</label></td>
                <td><label for="category" class="grey">Category</label></td>
            </tr>
            <tr>
                <td width="110"><input type="text" name="price" id="price" autocomplete="off"
                    value="${menuItem.getPrice()}" spellcheck="false"
                    placeholder="                  97" size="8px"></td>


                <td width="130"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">
                            <input type="radio" name="active" id="yes" value="Yes"
                                class="checkbox-size" checked>
                            <label for="yes">Yes</label>
                            <input id="yes" class="checkbox-size" type="radio" name="active">
                            <label for="no">No</label>
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" id="yes" class="checkbox-size">
                            <label for="yes">Yes</label>
                            <input value="No" id="yes" class="checkbox-size" type="radio"
                                class="checkbox-size" name="active" checked>
                            <label for="no">No</label>
                        </c:otherwise>

                    </c:choose></td>

                <td width="161"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        var="dateOfLaunch" pattern="dd/MM/yyyy" /><input type="text"
                    name="dateOfLaunch" id="date-of-launch" placeholder="27/04/2022"
                    value="${dateOfLaunch}" autocomplete="off" spellcheck="false" size="13px" /></td>
                <td><select name="category">
                        <option value="${menuItem.getCategory()}" class="grey">${menuItem.getCategory()}</option>
                        <option value="Starters">Starters</option>
                        <option value="Main Course">Main Course</option>
                        <option value="Dessert">Dessert</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>
            <tr>
                <td height="30px"></td>
            </tr>
            <tr>
                <td colspan="4"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">
                            <input class="checkbox-size" type="checkbox" name="freeDelivery" checked
                                id="free-delivery">
                            <label id="free-delivery-align" for="free-delivery" class="grey">Free
                                Delivery</label>
                        </c:when>
                        <c:otherwise>
                            <input class="checkbox-size" type="checkbox" name="freeDelivery"
                                id="free-delivery">
                            <label id="free-delivery-align" for="free-delivery" class="grey">Free
                                Delivery</label>

                        </c:otherwise>
                    </c:choose>
            </tr>
            <tr>
                <td colspan="4"><input type="submit" name="submit" value="Save" class="submit"></td>
            </tr>
        </table>
    </form>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>