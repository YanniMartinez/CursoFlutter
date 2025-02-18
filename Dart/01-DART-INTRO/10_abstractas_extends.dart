void main(){
  //final windPlant = EnergyPlant();  Esto no es posible
  final windPlant = WindPlant( initialEnergy: 100);
  print(windPlant);

  print('Wind: ${ chargePhone(windPlant)}'); //usando un método con la herencia 
}


double chargePhone( EnergyPlant plant){
  if( plant.energyLeft <10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
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

  void consumeEnergy( double amount ){
    throw UnimplementedError();  //Lo lanza si no está implementado pero no es necesario
  } //Solo se define pero no se implementa
}

//Extends o implement
class WindPlant extends EnergyPlant{  //Heredando, debe implementar todos los métodos

  WindPlant({required double initialEnergy})
    : super( energyLeft: initialEnergy, type: PlantType.wind ); //Llamando al constructor del padre;

  //Poniendo el método
  @override
  void consumeEnergy( double amount ){
    energyLeft -= amount;
  }
}
