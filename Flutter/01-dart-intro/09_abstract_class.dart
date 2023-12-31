void main(){
  
  final windPlant=WindPlant(initialEnergy: 180);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);



  print("Wind: ${chagePhone(windPlant)}");
  print("Nuclear: ${chagePhone(nuclearPlant)}");

}

double chagePhone(EnergyPlant plant){

  if(plant.energyLeft<10){
    throw Exception("Not enough energy");
  }

  return plant.energyLeft - 10;

}

enum PlantType {nuclear, wind, water}

abstract class EnergyPlant{
  double energyLeft;
  final PlantType type; //Nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy (double amount);

}

//extends o implements
class WindPlant extends EnergyPlant{

  WindPlant({required double initialEnergy})
  :super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount){
    energyLeft-=amount;
  }

}


class NuclearPlant implements EnergyPlant{

  double energyLeft;
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount){
    energyLeft-=(amount*0.5);
  }

}