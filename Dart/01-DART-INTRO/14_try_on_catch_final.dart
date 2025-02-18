void main() async{
  print('Inicio del programa');
  try{
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('Exito: $value');
  } on Exception catch(err){  //Podemos cachar algo especifico
    print('Ops! Algo terrible pasó: $err')
  }catch(err){
    print('Tenemos un error: $err');
  }finally{
    print('Fin del try y catch');
  }
  

  print('Fin del programa');
}

//Una función async siempre devolverá un Future
Future<String> httpGet(String url) async{

  await Future.delayed( const Duration(seconds: 1)); //El await hace que espere el proceso
  
  throw Exception('No hay parámetros en el URL');

  //throw 'Error en la petición';
  //return 'Tenemos un valor de la petición';

}
