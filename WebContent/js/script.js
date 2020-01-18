function validateMenuItemForm() {
   
    var name = document.forms["menuItemForm"]["name"].value;
    var titleRegExp = (/^[A-Z a-z]{2,65}$/);

    // title validation
    if (name == "") {
        alert("Title is required.");
        return false;
    }
    if (!name.match(titleRegExp)) {
        alert("Title should have 2 to 65 characters");
        return false;
    }

    // price validation
    var price = document.forms["menuItemForm"]["price"].value;
    if (price == "") {
        alert("Price is required.");
        return false;
    }
    if (isNaN(price)) {
        alert("Price has to be a number.");
        return false;
    }

    // dateOfLaunch validation
    var dateOflaunch = document.forms["menuItemForm"]["dateOfLaunch"].value;
    if (dateOflaunch == "") {
        alert("Date of Launch is required.");
        return false;
    }

    // category validation
    var category = document.forms["menuItemForm"]["category"].value;
    if (category == "") {
        alert("Select one category.");
        return false;
    }
}
