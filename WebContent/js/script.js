function validF() {
    var title = document.forms["editmenu"]["title"].value;
    var titleRegExp = (/^[A-Za-z]{2,65}$/);

    // title validation
    if (title == "") {
        alert("Title is required.");
        return false;
    }
    if (!title.match(titleRegExp)) {
        alert("Title should have 2 to 65 characters");
        return false;
    }

    // price validation
    var price = document.forms["editmenu"]["price"].value;
    if (price == "") {
        alert("Price is required.");
        return false;
    }
    if (isNaN(price)) {
        alert("Price has to be a number.");
        return false;
    }

    // dateOfLaunch validation
    var datelaunch = document.forms["editmenu"]["dateOfLaunch"].value;
    if (datelaunch == "") {
        alert("Date of Launch is required.");
        return false;
    }

    // category validation
    var category = document.forms["editmenu"]["category"].value;
    if (category == "") {
        alert("Select one category.");
        return false;
    }
}
