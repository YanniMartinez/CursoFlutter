void main(){
  //Pudieramos omitir el <String, dynamic>
  final Map<String,dynamic> pokemon = {
    'name' : 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{   //El <int, String> es opcional pero es bueno ponerlo
      1:'ditto/front.png',
      2:'ditto/back.png'
    }
  };
  print(pokemon);
  print('Name: ${  pokemon['name'] }');
  print('Name: ${  pokemon['sprites'] }');

  //Imprimir back y front
  print('Name: ${  pokemon['sprites'][1] }');
  print('Name: ${  pokemon['sprites'][2] }');
}