$(document).ready(function () {
   "use strict";
    // 1. Simple mode, it styles document scrollbar:
        $("html").niceScroll({
        cursorcolor: "#2f4354",
        cursorwidth: "15px",
            smoothscroll:true,
    });


 //arrow
    $(".arrow").click(function () {
     $('html, body').animate({
         scrollTop: $(".section1").offset().top
     }, 1000);
    });
    //
})
