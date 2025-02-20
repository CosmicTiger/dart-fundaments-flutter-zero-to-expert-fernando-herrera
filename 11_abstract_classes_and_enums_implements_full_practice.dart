import 'dart:math';

// 📌 Scenario: Power Management System
// A city is powered by two energy plants:

// WindPlant (Renewable, affected by wind speed)
// NuclearPlant (Non-renewable, but provides consistent power)
// The city requires energy balancing, where:

// The wind plant generates power from environmental factors (wind speed).
// The nuclear plant provides backup energy if wind power is insufficient.
// Both plants can transfer and trade energy to maintain stability.
// The city uses energy daily, and plants must optimize their resources.

void main() {
  final windPlant = WindPlant(initialEnergy: 150);
  final nuclearPlant = NuclearPlant(energyLeft: 500);

  print('\n🔋 Initial Energy Levels:');
  print('WindPlant: ${windPlant.energyLeft} kWh');
  print('NuclearPlant: ${nuclearPlant.energyLeft} kWh');

  print('\n⚡ Simulating Energy Production...');
  windPlant.generateEnergy(Random().nextDouble() * 10); // Wind fluctuates
  nuclearPlant.generateEnergy(1); // Nuclear is stable

  print('\n📈 Optimizing Energy Usage...');
  windPlant.optimizeEnergyUsage();
  nuclearPlant.optimizeEnergyUsage();

  print('\n🏙️ City is consuming energy...');
  double cityDemand = 200;
  if (windPlant.energyLeft >= cityDemand) {
    windPlant.consumeEnergy(cityDemand);
  } else {
    double remainingDemand = cityDemand - windPlant.energyLeft;
    windPlant.consumeEnergy(windPlant.energyLeft);
    nuclearPlant.consumeEnergy(remainingDemand);
  }

  print('\n🚨 Checking if energy plants need a shutdown...');
  windPlant.emergencyShutdown();
  nuclearPlant.emergencyShutdown();

  print('\n🔁 Transferring Energy between Plants...');
  nuclearPlant.transferEnergy(windPlant, 50);

  print('\n💰 Trading and Selling Energy...');
  double windEnergyTrade = windPlant.calculateEnergyTrade(30);
  double nuclearEnergySell = nuclearPlant.calculateEnergySell(30);
  windPlant.consumeEnergy(windEnergyTrade);
  nuclearPlant.consumeEnergy(nuclearEnergySell);

  print('\n🛠️ Simulating maintenance...');
  windPlant.scheduleMaintenance(5);
  nuclearPlant.scheduleMaintenance(3);

  print('\n📊 Energy Efficiency Reports:');
  print('WindPlant Efficiency: ${windPlant.calculateEfficiency(100)}%');
  print('NuclearPlant Efficiency: ${nuclearPlant.calculateEfficiency(500)}%');

  print('\n💡 Final Energy Levels:');
  print('WindPlant: ${windPlant.energyLeft} kWh');
  print('NuclearPlant: ${nuclearPlant.energyLeft} kWh');

  // Output:
  // 🔋 Initial Energy Levels:
  // WindPlant: 150.0 kWh
  // NuclearPlant: 500.0 kWh

  // ⚡ Simulating Energy Production...
  // PlantType.wind plant recharged by 61.361151418566386 kWh.
  // PlantType.wind plant generated 61.361151418566386 kWh.
  // PlantType.nuclear plant recharged by 50.0 kWh.
  // PlantType.nuclear plant generated 50.0 kWh.

  // 📈 Optimizing Energy Usage...
  // PlantType.wind plant is operating at full capacity.
  // PlantType.nuclear plant is always running at full efficiency.

  // 🏙️ City is consuming energy...

  // 🚨 Checking if energy plants need a shutdown...

  // 🔁 Transferring Energy between Plants...
  // PlantType.wind plant recharged by 50.0 kWh.
  // PlantType.nuclear plant transferred 50.0 kWh to PlantType.wind plant.

  // 💰 Trading and Selling Energy...
  // Consuming 0.44999999999999996 kWh from NuclearPlant...

  // 🛠️ Simulating maintenance...
  // PlantType.wind plant is under maintenance. Lost 10.0 kWh.
  // PlantType.nuclear plant is under maintenance. Lost 4.5 kWh.

  // 📊 Energy Efficiency Reports:
  // WindPlant Efficiency: 51.06115141856639%
  // NuclearPlant Efficiency: 99.00999999999999%

  // 💡 Final Energy Levels:
  // WindPlant: 51.06115141856638 kWh
  // NuclearPlant: 495.05 kWh
}

enum PlantType { nuclear, wind, hydro, solar }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  final double efficiency;

  EnergyPlant(
      {required this.type, this.energyLeft = 0.0, this.efficiency = 1.0});

  double consumeEnergy(double amount) {
    double effectiveAmount = amount / efficiency;
    if (energyLeft >= effectiveAmount) {
      energyLeft -= effectiveAmount;
      return energyLeft;
    } else {
      print('⚠️ Not enough energy available.');
      return energyLeft;
    }
  }

  void recharge(double amount) {
    energyLeft += amount;
    print('$type plant recharged by $amount kWh.');
  }

  void optimizeEnergyUsage() {
    if (energyLeft < 20) {
      print('$type plant is in low energy mode.');
    } else if (energyLeft < 50) {
      print('$type plant is reducing output to conserve energy.');
    } else {
      print('$type plant is operating at full capacity.');
    }
  }

  void emergencyShutdown() {
    if (energyLeft < 5) {
      print('🚨 Emergency shutdown activated for $type plant!');
      energyLeft = 0;
    }
  }

  void transferEnergy(EnergyPlant target, double amount) {
    if (energyLeft >= amount) {
      energyLeft -= amount;
      target.recharge(amount);
      print('$type plant transferred $amount kWh to ${target.type} plant.');
    } else {
      print('⚠️ Not enough energy to transfer.');
    }
  }

  double calculateEfficiency(double energyProduced) {
    return energyProduced > 0 ? (energyLeft / energyProduced) * 100 : 0;
  }

  void scheduleMaintenance(double hours) {
    double energyLost = hours * 2;
    energyLeft = (energyLeft > energyLost) ? energyLeft - energyLost : 0;
    print('$type plant is under maintenance. Lost $energyLost kWh.');
  }

  void generateEnergy(double environmentalFactor) {
    double energyProduced = environmentalFactor * 10;
    recharge(energyProduced);
    print('$type plant generated $energyProduced kWh.');
  }

  double calculateEnergyTrade(double amount) {
    return amount * 0.01;
  }

  double calculateEnergySell(double amount) {
    return amount * 0.05;
  }
}

class WindPlant extends EnergyPlant {
  WindPlant({double initialEnergy = 0.0})
      : super(type: PlantType.wind, energyLeft: initialEnergy, efficiency: 0.9);

  @override
  double consumeEnergy(double amount) {
    energyLeft -= amount;
    return energyLeft;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  double efficiency;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft, this.efficiency = 1.9});

  @override
  void recharge(double amount) {
    energyLeft += amount;
    print('$type plant recharged by $amount kWh.');
  }

  @override
  void optimizeEnergyUsage() {
    print('$type plant is always running at full efficiency.');
  }

  @override
  void emergencyShutdown() {
    if (energyLeft < 5) {
      print('🚨 Emergency shutdown for $type plant!');
      energyLeft = 0;
    }
  }

  @override
  double consumeEnergy(double amount) {
    double amountToConsume = amount * 0.5;
    print('Consuming $amountToConsume kWh from NuclearPlant...');
    energyLeft -= amountToConsume;
    return energyLeft;
  }

  @override
  void transferEnergy(EnergyPlant target, double amount) {
    if (energyLeft >= amount) {
      energyLeft -= amount;
      target.recharge(amount);
      print('$type plant transferred $amount kWh to ${target.type} plant.');
    } else {
      print('⚠️ Not enough energy to transfer.');
    }
  }

  @override
  double calculateEfficiency(double energyProduced) {
    return (energyLeft / energyProduced) * 100;
  }

  @override
  void scheduleMaintenance(double hours) {
    double energyLost = hours * 1.5;
    energyLeft -= energyLost;
    print('$type plant is under maintenance. Lost $energyLost kWh.');
  }

  @override
  void generateEnergy(double environmentalFactor) {
    double energyProduced = 50;
    recharge(energyProduced);
    print('$type plant generated $energyProduced kWh.');
  }

  @override
  double calculateEnergyTrade(double amount) {
    return amount * 0.02;
  }

  @override
  double calculateEnergySell(double amount) {
    return amount * 0.03;
  }
}
