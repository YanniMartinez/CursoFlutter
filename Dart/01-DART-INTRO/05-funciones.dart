void main(){

  print( greetEveryone());
  print( 'Suma: ${ addTwoNumbers(10,20)}');
  print( 'Suma: ${ addTwoNumbers2(10,20)}');
  print ( greetPerson(name: 'Yann', message: 'Hi, ')); //Se pueden mandar ambos
  print ( greetPerson(name: 'Yann')); //Se puede mandar solo el obligatorio
}

String greetEveryone(){
  return 'Hello everyone!';
}

//Lambda function, inmediatamente debes retornar el valor es decir no puede estar entre {}
String greetEveryone2 () => 'Hello everyone';  

int addTwoNumbers(int a, int b){
  return a+b;
}

//Versión de flecha, nota veamos que no existe la palabra RETURN
int addTwoNumbers2(int a, int b) => a+b;

//Al ponerlo entre llaves nos dice que son posibles opcionales
int addTwoNumbersOptional(int a, [int? b]){
  b = b ?? 0; //Es una forma de confirmar si un parametro tiene un valor sino lo pone igual a 0;
  b ??= 0;    //Otra forma de establecerlo
  return a+b;
}

//Al ponerlo entre llaves nos dice que son posibles opcionales, además podemos ponerle un valor por defecto a b
int addTwoNumbersOptional2(int a, [int b = 0]){
  //Al recibirlo de este modo, garantizamos que nunca se sume un nulo con el valor de A
  return a+b;
}

//Dart nos ofrece una manera de ponerle nombres a los parametros para que no necesariamente se use el orden
//Al ponerlo entre llaves los pone como opcionales y con nombre
//la palabra required forza a que siempre se mande ese valor
String greetPerson({ required String name, String message = 'Hola,'}){
  return '$message $name';
}