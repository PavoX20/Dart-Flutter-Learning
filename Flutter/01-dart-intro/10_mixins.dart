
abstract class Animal {}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin class volador{
  void volar () => print("Estoy volando!");
}

mixin class Caminante{
  void caminar () => print("Estoy caminando!");
}

mixin class Nadador{
  void nadar () => print("Estoy nadando!");
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with volador, Caminante {}

class Paloma extends Ave with Caminante, volador{}
class Pato extends Ave with Caminante, volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador{}

void main(){
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.nadar();
  namor.volar();
}

