/**Sólo podemos usar await en funciones async */
void main() async{
  print('Inicio del programa');
  //Si todo sale bien entra en el then, caso contrario al catch
  try{
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value);
  }catch(err){
    print('Tenemos un error: $err');
  }
  

  print('Fin del programa');
}

//Una función async siempre devolverá un Future
Future<String> httpGet(String url) async{

  await Future.delayed( const Duration(seconds: 1)); //El await hace que espere el proceso
  
  throw 'Error en la petición';
  //return 'Tenemos un valor de la petición';

}
