void main(){
  final String pokemon = 'Ditto' //No cambiará valor
  final int hp = 100;
  bool? isAlive //Puede ser nulo, true o false
  final bool isAlive = true;
  ////final abilities = ['impostor'];
  //final abilities = <String> ['impostor'];
  //final List<String> abilities = ['impostor'];
  final List<String> abilities = <String> ['impostor'];
  final sprites = <String>['ditto/front.png','ditto/back.png'];

  //Dynamic por defecto es nulo    dynamic===null
  //dynamic? errorMessage='Hola';   Aqui el ? es innecesario porque siempre puede ser nulo
  dynamic errorMessage='Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () =>true ;
  errorMessage = null;


  //Definición de String multilinea
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}