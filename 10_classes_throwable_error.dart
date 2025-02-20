void main() {
  final square = Square(side: -10.0);

  print(
      'Area of the square: ${square.calculateArea()}'); // Output: Area of the square: 100.0
}

class Square {
  double _side; // side * side equation purpose

  Square({required double side})
      : _side = (side >= 0)
            ? side
            : throw ArgumentError(
                'Side must be >= 0'); // Error: Invalid argument(s): Side must be >= 0

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
