void main(){
  //final windPlant = EnergyPlant();  Esto no es posible
}

//Enumeración no lleva punto y coma
enum PlantType{ nuclear, wind, water}

//No se puede instanciar
abstract class EnergyPlant {
  double energyLeft;
  //String type; //Queremos que solo sea nuclear, wind, water  pero no dejar abierto a otros string
  PlantType type; //Usamos la enum para tener solo de cierto tipo.

  //constructor
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy( double amount ); //Solo se define pero no se implementa
}

