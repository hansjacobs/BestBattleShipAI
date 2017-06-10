class @BoardCreator
    CreateBoard: ->
        locationsSoFar = []
        ships = []
        shipSizes = [2, 3, 3, 4, 5]
        shipSizes.sort (a,b) ->
            Math.round(Math.random())-0.5
        for i in shipSizes
            shipMaker = new ShipMaker length: i, locationsSoFar: locationsSoFar
            ships.push {Fields:shipMaker.MakeShip()}
        ships