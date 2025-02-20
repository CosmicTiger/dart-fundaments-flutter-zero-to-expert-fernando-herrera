void main() {
  final square = Square(side: -10.0);

  print(
      'Area of the square: ${square.calculateArea()}'); // Output: Area of the square: 100.0
}

class Square {
  double _side; // side * side equation purpose

  Square({required double side})
      : assert(side >= 0,
            'Side must be >= 0'), // Failed assertion: line 12 pos 16: 'side >= 0': Side must be >= 0
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setter called with value $value');

    if (value < 0) {
      throw ('Value must be >= 0');
    }
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
