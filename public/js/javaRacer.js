$(document).ready(function() {

  // ('#GO').click(function() {

    $(document).on('keyup', function(event) { 

      var code = event.keyCode;
      
      var speed = "+=50px"
      if(code == 80) {
        $('#racer1').animate({left: speed}, 50);
        console.log("r1:" + $('#racer1').css('left'))
      };
      if (code == 81) {
        $('#racer2').animate({left: speed}, 50);
        console.log("r2:" + $('#racer2').css('left'))
      };

      if (  parseFloat($('#racer1').css('left')) >= 800  ) { 
        winner = "racer1";
        window.alert("Racer 1 is the winner!");

        $('#racer1').css("left", "0px");
        $('#racer2').css("left", "0px");
      };

      if (  parseFloat($('#racer2').css('left')) >= 800  ) { 
        winner = "racer2" 
        window.alert("Racer 2 is the winner!");

        $('#racer1').css("left", "0");
        $('#racer2').css("left", "0");
      };
      
    });
  // };
});
