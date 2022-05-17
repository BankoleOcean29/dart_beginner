import 'dart:math';

class Dice {
  int _sides = 6;
  final int _numberOfDice = 2;
  List <dynamic> _values = [4, 6];

  int get maximumValue => _sides * _numberOfDice;
  int get sides => _sides;

  set sides (int s) {
    if (s < 2) {
      _sides = 2;
    } else {
      _sides = s;
    }
  }

  void roll() {
    var newValues = [];
    Random rand = Random();
    for (var i = 0; i < _numberOfDice; i++) {
      newValues.add(rand.nextInt(sides) + 1);
    }
    _values = newValues;
  }

  void printdice() => print(_values);
}