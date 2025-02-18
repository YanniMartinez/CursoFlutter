void main(){
  final mySquare = Square( side:10);

  //mySquare.side = -5 //Lanzará el throw
  mySquare.side = 5 

  print ('Area: ${mySquare.calculateArea()}'); //Llamando un método 
  print ('Area: ${mySquare.calculateArea()}'); //Llamando un atributo
}

class Square {
  //El guion bajo representa propiedad privada
  double _side; 

  Square({ required double side})
    : _side = side;

  double get area{
    return _side * _side;
  }
  
  set side(double value){
    print('Setting new value $value');
    if( value < 0) throw 'Value must be >=0';

    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}