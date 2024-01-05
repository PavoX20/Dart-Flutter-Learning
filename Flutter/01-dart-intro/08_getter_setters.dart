void main(){

  final mySquare = Square(side: -10);
  //mySquare._side=5;
  print("Area: ${mySquare.area}");
}

class Square {
  double _side; //_ lo hace privado para la clase, pero se puede colocarla con el get, como la función escrita más abajo

  Square({required double side})
  :assert(side>=0, "side must be >= 0"),
  _side=side;

  double get area {
    return _side*_side;
  }

  set side(double value){
    print("Setting new value $value");
    if(value < 0 ) throw "Value must be greater than 0";

    _side=value;

  }


  double calculateAre(){
    return _side*_side;
  }
}