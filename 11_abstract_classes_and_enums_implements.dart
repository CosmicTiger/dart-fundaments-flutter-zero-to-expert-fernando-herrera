void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(
      'Wind plant energy: ${windPlant.energyLeft}'); // Output: Wind plant energy: 100.0

  print(
      'Nuclear plant energy: ${nuclearPlant.energyLeft}'); // Output: Nuclear plant energy: 100.0

  windPlant.consumeEnergy(50);
  print(
      'Wind plant energy: ${windPlant.energyLeft}'); // Output: Wind plant energy: 50.0
  windPlant.checkEnergy(); // Output: Energy left: 50.0

  print('Charging phone... Wind plant energy: ${chargePhone(windPlant)}');
  // Output: Charging phone... Wind plant energy: 40.0
  print('Charging phone... Nuclear plant energy: ${chargePhone(nuclearPlant)}');
  // Output: Charging phone... Nuclear plant energy: 40.0

  windPlant.checkEnergy(); // Output: Energy left: 40.0
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy left');
  }

  return plant.consumeEnergy(10);
}

enum PlantType { nuclear, wind, hydro, solar }

abstract class EnergyPlant {
  double energyLeft;
  // NOTE: PlantType should be final in order to not create setter or getter unnecessaries whenever the
  // abstract class is used as implemented.
  final PlantType
      type; // NOTE: For the different types of energy plants (e.g. wind, solar, hydro, etc.)

  EnergyPlant({required this.type, this.energyLeft = 0.0});

  double consumeEnergy(double amount) {
    throw UnimplementedError('consumeEnergy() is not implemented');
  }

  void checkEnergy() {
    print('Energy left: $energyLeft');
  }
}

// Extends & Implements
// NOTE: extends applicability
class WindPlant extends EnergyPlant {
  WindPlant({PlantType type = PlantType.wind, double initialEnergy = 0.0})
      : super(type: type, energyLeft: initialEnergy);

  @override
  double consumeEnergy(double amount) {
    energyLeft -= amount;

    return energyLeft;
  }
}

// NOTE: implements applicability
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void checkEnergy() {
    print('Energy left: $energyLeft');
  }

  @override
  double consumeEnergy(double amount) {
    double amountToConsume = amount * 0.5;
    print('Consuming $amountToConsume energy...');
    energyLeft -= amountToConsume;

    return energyLeft;
  }
}
