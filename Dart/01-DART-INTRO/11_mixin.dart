/**
El objetivo de los mixins es tener clases especializadas 
implementando algo muy particular o solo implementar actividades en específico

En su momento aun no existía la palabra reservada mixin, 
por lo que estos se declaraban con abstract class como se verá en el video.

Ej:

    abstract class Volador {
        void volar() => print('estoy volando!');
    }

En las últimas versiones de Dart, estos se declaran usando únicamente la palabra reservada mixin, de la siguiente forma:

    mixin Volador {
        void volar() => print('estoy volando!');
    }

*/

abstract class Animal {}

abstract class Mamimero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


abstract class Volador{
  void volar() => print('estoy volando');
}

abstract class Caminante{
  void caminar() => print('estoy caminando');
}

abstract class Nadador{
  void nadar() => print('estoy nadando');
}

/**Sección de los mixins acontinuación */

//La idea del mixing es poner solo ciertas propiedades
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Nadador,Volador, Caminante{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}


void main(){
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.volar();
}