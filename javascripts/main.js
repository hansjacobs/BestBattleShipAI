// Generated by CoffeeScript 2.0.0-beta2
(function() {
  var MakeShips;

  MakeShips = function() {
    var i, j, len, locationsSoFar, shipMaker, shipSizes, ships;
    locationsSoFar = [];
    ships = [];
    shipSizes = [2, 3, 3, 4, 5];
    shipSizes.sort(function(a, b) {
      return Math.round(Math.random()) - 0.5;
    });
    for (j = 0, len = shipSizes.length; j < len; j++) {
      i = shipSizes[j];
      shipMaker = new ShipMaker({
        length: i,
        locationsSoFar: locationsSoFar
      });
      ships.push({
        Fields: shipMaker.MakeShip()
      });
    }
    return ships;
  };

  $("#startgame").click(function() {
    return $.ajax({
      url: 'http://localhost:50095/Register',
      type: 'POST',
      data: {
        GameId: $('#gameid').val(),
        PlayerId: $('#playerid').val(),
        Url: window.location.href,
        BattleShips: MakeShips()
      },
      dataType: "json",
      success: function(response) {
        return alert("success");
      },
      error: function(xhr, status) {
        return alert("error");
      }
    });
  });

}).call(this);