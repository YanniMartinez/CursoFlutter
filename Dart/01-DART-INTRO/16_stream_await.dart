/**Sólo podemos usar await en funciones async */
void main() async{
  emitNumber()
    .listen((int value){
      print('Stream value: $value');
    });
}

//async* significa que es una funcion asyn que retorna un stream
Stream<int> emitNumber() async* {
  final valuesToEmit = [1,2,3,4,5];

  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    //En este caso al retornar un stream no podemos usar return porque no retornamos
    //Sino que emitimos, es por eso que usamos yield
    //return i;
    yield i;
  }
}
