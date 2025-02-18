//son flujos de información que pueden estar emitiendo información
//constantemente, una unica vez o nunca, pueden ser retornados como objetos, funciones
void main(){
  emitNumbers().listen((value){
    print('Stream value: $value');
  });
}

//Para que un Stream emita valores alguien tiene que escucharlo

Stream<int> emitNumbers(){
  //periodic es un constructor que emite valores hasta que el stream se cierre
  //Espera un valor que indica el intervalo de tiempo
  return Stream.periodic( const Duration(seconds: 1), (value){
    //print('Desde periodic $value');
    return value;
  }).take(5); //Take solo toma cierto número de emisiones y detiene
}