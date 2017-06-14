describe 'BoardCreator', ->
    it 'CreateBoard - 100 games - 500 valid ships', ->    
        boardCreator = new BoardCreator()    
        for i in [0...100]
            result = boardCreator.CreateBoard()
            AreShipsValid result
    AreShipsValid = (ships) ->
        expect(ships.length).toBe 5
        occurrences = {}
        console.log(ships)
        for i in ships
            occurrences[i.Fields.length] = (occurrences[i.Fields.length] || 0) + 1
        expect(occurrences[2]).toBe 1
        expect(occurrences[3]).toBe 2
        expect(occurrences[4]).toBe 1
        expect(occurrences[5]).toBe 1