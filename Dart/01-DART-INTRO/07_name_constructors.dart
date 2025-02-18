void main(){

  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Sentido aracnido',
    'isAlive': true
  };

  final ironman = Hero(
    //isAlive: false,
    //Se podría tomar info de un rawJson suponiendo que viene de un Rest
    isAlive: rawJson['isAlive2'] ?? false, //Si la propiedad isAlive2 no existe entonces en automático es false
    power: 'Money',
    name: 'Tony Stark'
  );

  final spiderman = Hero.fromJson( rawJson );

  print(ironman); //Parece que el tostring es automático
  print(spiderman); //Usando el otro constructor
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  //Constuctor con nombre "fromJson"
  Hero.fromJson( Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString(){
    return '$name - $power ${ isAlive ? 'YES!' : 'NO! x_x'}';
  }
}