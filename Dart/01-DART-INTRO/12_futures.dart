/**Future: Representa el resultado de una operacion async Es una promesa de que pronto tendremos un valor */
void main(){
  print('Inicio del programa');
  //Si todo sale bien entra en el then, caso contrario al catch
  httpGet('https://fernando-herrera.com/cursos').then((value){
    print(value);
  }).catchError((err){ //Manejo de exceptiones
    print('Error $err');
  });

  print('Fin del programa');
}

//Para hacer uso de future podemos definirlo de este modo
Future<String> httpGet(String url){
  //delayed espera un objeto tipo duration que indica el delay
  return Future.delayed( const Duration(seconds: 1),(){
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion http';
  } );
}

