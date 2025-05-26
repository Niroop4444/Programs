function leapYear(year) {
    if (year % 100 === 0 ? year % 400 === 0 : year % 100 === 0) {
        return "Leap year.";
    } else {
        return "Not Leap year.";
    }
}