void main(){
  final wolverine = new Hero(name: "Logan", power: "Regeneración");

  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);

}

class Hero{
  String name;
  String power;

  //Hero(String pName, String pPower):this.name=pName,this.power=pPower;

  Hero({required this.name, this.power = "Sin poder"});

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }



}



