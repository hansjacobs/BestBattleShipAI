class @ShipMaker
    constructor: (options) ->
        {@length, @locationsSoFar} = options
        
    MakeShipFields: (xPos, yPos, xDir, yDir) ->
        fields = []
        for i in [0..@length-1]
            endX = xPos + i*xDir
            endY = yPos + i*yDir
            coordinate = @ConvertXyToCoordinate(endX, endY)
            fields.push coordinate
            @locationsSoFar.push coordinate
        fields

    CanMakeShip: (xStart, yStart, xDir, yDir) ->
        for i in [0..@length-1]
            endX = xStart + xDir*i
            endY = yStart + yDir*i
            if endX > 9 or endX < 0 or endY > 9 or endY < 0 or @ConvertXyToCoordinate(endX, endY) in @locationsSoFar
                return false
        true

    MakeShip: ->
        xPos = Math.floor(Math.random() * 10)
        yPos = Math.floor(Math.random() * 10)

        if @CanMakeShip(xPos, yPos, 1, 0)
            fields = @MakeShipFields(xPos, yPos, 1, 0)
            fields
        else if @CanMakeShip(xPos, yPos, 0, 1)
            fields = @MakeShipFields(xPos, yPos, 0, 1)
            fields

    ConvertXyToCoordinate: (x, y) ->
        firstCoordinate
        switch x
            when 0 then firstCoordinate = "A"
            when 1 then firstCoordinate = "B"
            when 2 then firstCoordinate = "C"
            when 3 then firstCoordinate = "D"
            when 4 then firstCoordinate = "E"
            when 5 then firstCoordinate = "F"
            when 6 then firstCoordinate = "G"
            when 7 then firstCoordinate = "H"
            when 8 then firstCoordinate = "I"
            when 9 then firstCoordinate = "J"
        firstCoordinate + (y + 1)