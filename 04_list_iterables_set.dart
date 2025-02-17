void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('Original List $numbers');
  print('Length of the list: ${numbers.length}');
  print('First element of the list: ${numbers.first}');
  print('Last element of the list: ${numbers.last}');
  print('Element at index 5: ${numbers[5]}');
  print('Element at index 5: ${numbers.elementAt(5)}');
  print('Index of element 5: ${numbers.indexOf(5)}');
  print('Index of element 10: ${numbers.indexOf(10)}');
  print('Index of element 11: ${numbers.indexOf(11)}');
  print('Index of element 0: ${numbers.indexOf(0)}');
  print('Index of element 1: ${numbers.indexOf(1)}');
  print('Index of element 2: ${numbers.indexOf(2)}');
  print('Index of element 3: ${numbers.indexOf(3)}');
  print('Index of element 4: ${numbers.indexOf(4)}');
  print('Index of element 5: ${numbers.indexOf(5)}');
  print('Index of element 6: ${numbers.indexOf(6)}');
  print('Index of element 7: ${numbers.indexOf(7)}');
  print('Index of element 8: ${numbers.indexOf(8)}');
  print('Index of element 9: ${numbers.indexOf(9)}');
  print('Index of element 10: ${numbers.indexOf(10)}');
  print('Index of element 11: ${numbers.indexOf(11)}');
  print('Index of element 0: ${numbers.indexOf(0)}');
  print('Index of element 1: ${numbers.indexOf(1)}');
  print(
      'First element of the list: ${numbers.first}'); // NOTE: Only applicable if we know that there's an element in the list at first position
  print(
      'Last element of the list: ${numbers.last}'); // NOTE: Only applicable if we know that there's an element in the list at last position
  print('List Reversed: ${numbers.reversed}');

  final reversedNumbers =
      numbers.reversed; // NOTE: This is a Iterable<int> type
  print('List Reversed: $reversedNumbers');
  print('List Reversed: ${reversedNumbers.toList()}');
  print(
      'List toSet: ${numbers.toSet()}'); // NOTE: Each values are unique, it cannot be repeated

  final repeatedListNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1];
  print('Original List $repeatedListNumbers');
  print('List toSet: ${repeatedListNumbers.toSet()}');
  print('List toSet: ${repeatedListNumbers.toSet().toList()}');
  print('List toSet: ${repeatedListNumbers.toSet().toList().toSet()}');
  print('List toSet: ${repeatedListNumbers.toSet().toList().toSet().toList()}');
  print(
      'List toSet: ${repeatedListNumbers.toSet().toList().toSet().toList().toSet()}');

  final numbersGreaterThan5 = numbers.where((element) => element > 5);
  print('Numbers greater than 5 (iterable): $numbersGreaterThan5');
  print('Numbers greater than 5 (toSet): ${numbersGreaterThan5.toSet()}');
}
