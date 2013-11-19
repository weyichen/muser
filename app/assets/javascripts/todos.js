$(function(){
  $(".priority").hover(
    function(){$(".p1").css("background-color", "crimson");
               $(".p2").css("background-color", "greenyellow");
               $(".p3").css("background-color", "beige");},
    function(){$(".p1").css("background-color", "white");
               $(".p2").css("background-color", "white");
               $(".p3").css("background-color", "white");}
    );
});