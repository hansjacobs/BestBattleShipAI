// Generated by CoffeeScript 2.0.0-beta2
var indexOf = [].indexOf;

this.ShipMaker = class ShipMaker {
  constructor(options) {
    ({length: this.length, locationsSoFar: this.locationsSoFar} = options);
  }

  MakeShipFields(xPos, yPos, direction) {
    var coordinate, endX, endY, fields, i, j, ref;
    fields = [];
    for (i = j = 0, ref = this.length - 1; 0 <= ref ? j <= ref : j >= ref; i = 0 <= ref ? ++j : --j) {
      endX = xPos + i * direction.x;
      endY = yPos + i * direction.y;
      coordinate = this.ConvertXyToCoordinate(endX, endY);
      fields.push(coordinate);
      this.locationsSoFar.push(coordinate);
    }
    return fields;
  }

  CanMakeShip(xStart, yStart, direction) {
    var endX, endY, i, j, ref, ref1;
    for (i = j = 0, ref = this.length - 1; 0 <= ref ? j <= ref : j >= ref; i = 0 <= ref ? ++j : --j) {
      endX = xStart + direction.x * i;
      endY = yStart + direction.y * i;
      if (endX > 9 || endX < 0 || endY > 9 || endY < 0 || (ref1 = this.ConvertXyToCoordinate(endX, endY), indexOf.call(this.locationsSoFar, ref1) >= 0)) {
        return false;
      }
    }
    return true;
  }

  MakeShip() {
    var direction, randomDirection, xPos, yPos;
    xPos = Math.floor(Math.random() * 10);
    yPos = Math.floor(Math.random() * 10);
    direction = [
      {
        x: 1,
        y: 0
      }, {
        x: 0,
        y: 1
      }, {
        x: -1,
        y: 0
      }, {
        x: 0,
        y: -1
      }
    ];
    randomDirection = direction[Math.floor(Math.random() * 4)];
    if (this.CanMakeShip(xPos, yPos, randomDirection)) {
      return this.MakeShipFields(xPos, yPos, randomDirection);
    }
    return this.MakeShip();
  }

  ConvertXyToCoordinate(x, y) {
    firstCoordinate;
    var firstCoordinate;
    switch (x) {
      case 0:
        firstCoordinate = "A";
        break;
      case 1:
        firstCoordinate = "B";
        break;
      case 2:
        firstCoordinate = "C";
        break;
      case 3:
        firstCoordinate = "D";
        break;
      case 4:
        firstCoordinate = "E";
        break;
      case 5:
        firstCoordinate = "F";
        break;
      case 6:
        firstCoordinate = "G";
        break;
      case 7:
        firstCoordinate = "H";
        break;
      case 8:
        firstCoordinate = "I";
        break;
      case 9:
        firstCoordinate = "J";
    }
    return firstCoordinate + (y + 1);
  }

};
