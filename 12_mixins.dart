void main() {
  print('Mixins in Dart\n');
  final flipper = Dolphin();
  print('Flipper');
  flipper.swim();

  final rouge = Bat();
  print('Rouge');
  rouge.walk();
  rouge.fly();

  final duffy = Duck();
  print('Duffy');
  duffy.walk();
  duffy.swim();
  duffy.fly();
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Flyer {
  void fly() => print('I am flying');
}

mixin Swimmer {
  void swim() => print('I am swimming');
}

mixin Walker {
  void walk() => print('I am walking');
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Swimmer, Flyer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}
