void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  print(
      'Wind plant energy: ${windPlant.energyLeft}'); // Output: Wind plant energy: 100.0
  windPlant.consumeEnergy(50);
  print(
      'Wind plant energy: ${windPlant.energyLeft}'); // Output: Wind plant energy: 50.0
  windPlant.checkEnergy(); // Output: Energy left: 50.0
}

enum PlantType { nuclear, wind, hydro, solar }

abstract class EnergyPlant {
  double energyLeft;
  PlantType
      type; // NOTE: For the different types of energy plants (e.g. wind, solar, hydro, etc.)

  EnergyPlant({required this.type, this.energyLeft = 0.0});

  void consumeEnergy(double amount) {
    throw UnimplementedError('consumeEnergy() is not implemented');
  }

  void checkEnergy() {
    print('Energy left: $energyLeft');
  }
}

// Extends & Implements
class WindPlant extends EnergyPlant {
  WindPlant({PlantType type = PlantType.wind, double initialEnergy = 0.0})
      : super(type: type, energyLeft: initialEnergy);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
