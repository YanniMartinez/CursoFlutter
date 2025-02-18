void main(){
  //final wolverine = new Hero(); Ya no es necesaria la palabra new
  //final wolverine = Hero('Logan','Regeneración');
  final wolverine = Hero(name: 'Logan', power: 'Regeneración');
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class Hero{
  String name;
  String power;

  //Constructor de la clase, sin embargo esto no es muy util ya que marca error, cuando se ejecuta es muy tarde, para solucionarlo tenemos la sig opcion
  /*Hero( String pName, String pPower){ //Usar la palabra this es opcional, iria this.name=pName
    name = pName;
    power = pPower;
  }*/

  /*Hero(String pName, String pPower){ 
    : name = pName,
      power = pPower;
  }
  Una manera más sencilla es la siguiente:
  */

  //Hero( this.name, this.power);
  //Poniendo valores por nombre
  Hero( {
    required this.name, 
    //required this.power
    this.power = 'Sin poder'
  });

  //Sobreescritura de métodos por ejemplo del toString para mandar info detallada en base al requerimiento
  @override
  String toString(){
    return '$name - $power';
  }
}