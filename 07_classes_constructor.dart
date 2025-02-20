void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true,
  };
  final ironman = Hero(
    isAlive: rawJson['isAlive2'] ?? false,
    power: rawJson['power'],
    name: rawJson['name'],
  );

  final Map<String, dynamic> rawJson2 = {
    'name': 'Peter Parker',
    'power': 'Spider Sense',
    'isAlive': true,
  };
  final ironman2 = Hero.fromJson(rawJson2);

  print(
      ironman); // Output: Logan - Regeneration | Technically is using the toString method.
  print(ironman2);
}

class Hero {
  late String name;
  late String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  // NOTE: It helps to interpret the JSON object into a Hero object.
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No Name found',
        power = json['power'] ?? 'No Power found',
        isAlive = json['isAlive'] ?? 'Unknown live status';

  // NOTE: An override example of the toString method.
  @override
  String toString() {
    return 'What is the name of the hero? $name, What power does it have? $power  is it alive? ${isAlive ? 'YES!' : 'Nope'}';
  }
}
