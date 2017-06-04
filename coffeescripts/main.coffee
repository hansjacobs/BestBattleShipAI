MakeShips = ->
    locationsSoFar = []
    ships = []
    shipSizes = [2, 3, 3, 4, 5]
    shipSizes.sort (a,b) ->
        Math.round(Math.random())-0.5
    for i in shipSizes
        shipMaker = new ShipMaker length: i, locationsSoFar: locationsSoFar
        ships.push {Fields:shipMaker.MakeShip()}
    ships

$("#startgame").click ->
    $.ajax
        url: 'http://localhost:50095/Register'
        type: 'POST'
        data : {GameId: $('#gameid').val(), PlayerId: $('#playerid').val(), Url: window.location.href, BattleShips:MakeShips()}
        dataType: "json"
        success: (response) -> alert("success")
        error: (xhr, status) -> alert("error")