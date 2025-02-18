void main(){
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');  //Aqui vemos parentesis, y ello es un iterable

  //Es una colección de elementos que se puede leer de forma secuencial
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');  //Vemos que es un iterable
  print('List: ${reversedNumbers.toList() }');  //Regresa una lista, es decir []

  //Un set es un listado con valores UNICOS, es decir, elimina los duplicados
  print('Set: ${reversedNumbers.toSet() }');  //Regresa un set, es decir {}

  //num es la iteración en curso, básicamente itera toda la colección y retorna solo las que cumplan la condición
  final numbersGreaterThan5 = numbers.where( (num) {  //podemos poner (int num)
    return num > 5; //true
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 set: ${numbersGreaterThan5.toSet()}');
}