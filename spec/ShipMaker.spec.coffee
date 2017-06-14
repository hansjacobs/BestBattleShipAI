describe 'ShipMaker', ->
    it 'CanMakeShip - X boundary max exceeded - false', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.CanMakeShip 9, 6, {x: 1, y: 0}
        expect(result).toBe false
    it 'CanMakeShip - X max boundary used - true', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.CanMakeShip 8, 6, {x: 1, y: 0}
        expect(result).toBe true
    it 'CanMakeShip - OK - true', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.CanMakeShip 6, 6, {x: 1, y: 0}
        expect(result).toBe true
    it 'CanMakeShip - X boundary min exceeded - false', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.CanMakeShip 0, 6, {x: -1, y: 0}
        expect(result).toBe false
    it 'CanMakeShip - Y boundary min exceeded - false', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.CanMakeShip 6, 0, {x: 0, y: -1}
        expect(result).toBe false
    it 'CanMakeShip - Y boundary max exceeded - false', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.CanMakeShip 6, 9, {x: 0, y: 1}
        expect(result).toBe false
    it 'CanMakeShip - LocationSoFar in the way - false', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: ["B2"]
        result = shipMaker.CanMakeShip 1, 0, {x: 0, y: 1}
        expect(result).toBe false
    it 'CanMakeShip - LocationSoFar not in the way - true', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: ["B3"]
        result = shipMaker.CanMakeShip 1, 0, {x: 0, y: 1}
        expect(result).toBe true
    it 'MakeShipFields - Right - Success', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.MakeShipFields 0, 0, {x: 1, y: 0}
        expect(result).toEqual ['A1', 'B1']
    it 'MakeShipFields - Down - Success', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.MakeShipFields 0, 0, {x: 0, y: 1}
        expect(result).toEqual ['A1', 'A2']
    it 'MakeShipFields - Left - Success', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.MakeShipFields 9, 9, {x: -1, y: 0}
        expect(result).toEqual ['J10', 'I10']
    it 'MakeShipFields - Up - Success', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.MakeShipFields 9, 9, {x: 0, y: -1}
        expect(result).toEqual ['J10', 'J9']
    it 'MakeShipFields - Up - Success', ->
        shipMaker = new ShipMaker length: 2, locationsSoFar: []
        result = shipMaker.MakeShipFields 9, 9, {x: 0, y: -1}
        expect(result).toEqual ['J10', 'J9']