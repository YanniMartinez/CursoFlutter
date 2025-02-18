void main(){
  //var myName = 'Yann';    //Infiere el tipo de dato
  //final myName = 'Yann';  //Es una definicion en tiempo de ejecucion
  //late final myName;      //Permite definir el valor más adelante
  //String myName = 'Yann'; //Define el valor

  const myName = 'Yann';
  print('Hola $myName');
  print('Hola ${myName.toUpperCase()}');
  print('Hola ${1+1}');
}