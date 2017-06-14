describe('BoardCreator', function() {
  var AreShipsValid;
  it('CreateBoard - 100 games - 500 valid ships', function() {
    var boardCreator, i, j, result, results;
    boardCreator = new BoardCreator();
    results = [];
    for (i = j = 0; j < 100; i = ++j) {
      result = boardCreator.CreateBoard();
      results.push(AreShipsValid(result));
    }
    return results;
  });
  return AreShipsValid = function(ships) {
    var i, j, len, occurrences;
    expect(ships.length).toBe(5);
    occurrences = {};
    console.log(ships);
    for (j = 0, len = ships.length; j < len; j++) {
      i = ships[j];
      occurrences[i.Fields.length] = (occurrences[i.Fields.length] || 0) + 1;
    }
    expect(occurrences[2]).toBe(1);
    expect(occurrences[3]).toBe(2);
    expect(occurrences[4]).toBe(1);
    return expect(occurrences[5]).toBe(1);
  };
});
