void main() {
  // final wolverine =
  //     new Hero(); // NOTE: new keyword is optional or no longer needed, actually.

  // final wolverine = new Hero('Logan', 'Regeneration');
  final wolverine = new Hero(name: 'Logan', power: 'Regeneration');

  wolverine.name = 'Logan';
  wolverine.power = 'Regeneration';

  print(
      wolverine); // Output: Logan - Regeneration | Technically is using the toString method.
  print(wolverine.toString());
  print('Name: ${wolverine.name}');
  print('Power: ${wolverine.power}');
}

class Hero {
  late String name;
  late String power;

  // NOTE: This is a controlled initialization.
  // Hero({String name = 'No Name', String power = 'No Power'})
  //     : this.name = name,
  //       this.power = power;

  // Hero(this.name, this.power);

  // NOTE: Based on previous method, this helps to received the value optionally.
  // NOTE: And let you to establish default values for the parameters when is not required.
  Hero({required this.name, this.power = "No Power"});

  // NOTE: Constructor function is always needed while creating classes in Dart.
  // This is similar as in JS/TS, Python or Java in its traditional way of defining class.
  // Hero({String name = 'No Name', String power = 'No Power'}) {
  //   this.name = name;
  //   this.power = power;
  // }

  // NOTE: An override example of the toString method.
  @override
  String toString() {
    return '$name - $power';
  }
}
